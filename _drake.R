# load packages ----------------------------------------------------------------

source("code/99-packages.R")

library("drake")
library("magrittr")
suppressMessages(library("R.utils"))

# load mlr extra learner -------------------------------------------------------

source("https://raw.githubusercontent.com/mlr-org/mlr-extralearner/master/R/RLearner_regr_ranger_mtry_pow.R")

# Plans ------------------------------------------------------------------------

download_plan = code_to_plan("code/01-download.R")
hyperspectral_plan = code_to_plan("code/02-hyperspectral-processing.R")
sentinel_plan = code_to_plan("code/03-sentinel-processing.R")
data_plan = code_to_plan("code/04-data-preprocessing.R")

# project
learners_plan = code_to_plan("code/05-modeling/project/learner.R")
resampling_plan = code_to_plan("code/05-modeling/project/resamp.R")
param_set_plan = code_to_plan("code/05-modeling/project/param-set.R")
tune_ctrl_plan = code_to_plan("code/05-modeling/project/tune-ctrl.R")
tuning_plan = code_to_plan("code/05-modeling/project/tune.R")
train_plan = code_to_plan("code/05-modeling/project/train.R")
task_plan = code_to_plan("code/05-modeling/project/task.R")

# paper
learners_paper_plan = code_to_plan("code/05-modeling/paper/learner.R")
resampling_paper_plan = code_to_plan("code/05-modeling/paper/resampling.R")
param_set_paper_plan = code_to_plan("code/05-modeling/paper/param-sets.R")
tune_ctrl_paper_plan = code_to_plan("code/05-modeling/paper/tune-ctrl.R")
filter_paper_plan = code_to_plan("code/05-modeling/paper/filter-wrapper.R")
pca_paper_plan = code_to_plan("code/05-modeling/paper/pca-wrapper.R")
tuning_paper_plan = code_to_plan("code/05-modeling/paper/tune-wrapper.R")
tuning_mbo_paper_plan = code_to_plan("code/05-modeling/paper/tune-wrapper-mbo.R")
eda_paper_plan = code_to_plan("code/05-modeling/paper/eda.R")
aggregate_paper_plan = code_to_plan("code/061-aggregate.R")
feature_imp_plan = code_to_plan("code/05-modeling/paper/feature-importance.R")
source("code/06-benchmark-matrix.R")

source("code/07-reports.R")

sourceDirectory("R")

#  grouping for visualization --------------------------------------------------

download_plan$stage = "download"
hyperspectral_plan$stage = "hyperspectral_preprocessing"
data_plan$stage = "data"

learners_plan$stage = "modeling"
resampling_plan$stage = "modeling"
param_set_plan$stage = "modeling"
tune_ctrl_plan$stage = "modeling"
tuning_plan$stage = "modeling"
train_plan$stage = "modeling"
task_plan$stage = "modeling"
bm_plan$stage = "benchmark"
eda_paper_plan$stage = "filter-values"
aggregate_paper_plan$stage = "benchmark"
# prediction$stage = "prediction"
reports_plan_paper$stage = "reports"

# # Combine all ----------------------------------------------------------------

plan_project = bind_plans(data_plan, download_plan, hyperspectral_plan, learners_plan,
                          resampling_plan, param_set_plan, tune_ctrl_plan, train_plan,
                          tuning_plan, task_plan, reports_plan_project, sentinel_plan
)

plan_paper = bind_plans(data_plan, download_plan, hyperspectral_plan, learners_paper_plan,
                        resampling_paper_plan, param_set_paper_plan, tune_ctrl_paper_plan,
                        tuning_mbo_paper_plan,
                        filter_paper_plan, tuning_paper_plan, bm_plan, reports_plan_paper,
                        pca_paper_plan, eda_paper_plan, aggregate_paper_plan#, feature_imp_plan
)

options(clustermq.scheduler = "slurm",
        clustermq.template = "~/papers/2019-feature-selection/slurm_clustermq.tmpl")

plan_project %<>% dplyr::mutate(stage = as.factor(stage))
plan_paper %<>% dplyr::mutate(stage = as.factor(stage))


# project ----------------------------------------------------------------------

# drake_config(plan_paper,
#              verbose = 2, lazy_load = "eager",
#              console_log_file = "log/drake.log",
#              caching = "worker",
#              template = list(log_file = "log/worker%a.log", n_cpus = 4, memory = "12G", job_name = "paper2"),
#              # prework = list(
#              #   #uote(future::plan(future::multisession, workers = 25))#,
#              #   #quote(future::plan(future.callr::callr, workers = 4))
#              #   quote(parallelStart(
#              #     mode = "multicore", cpus = ignore(25)))
#              # ),
#              prework = list(quote(set.seed(1, "L'Ecuyer-CMRG")),
#                             quote(parallelStart(mode = "multicore", cpus = 4, level = "mlr.resample"))
#              ),
#              garbage_collection = TRUE, jobs = 55, parallelism = "clustermq", lock_envir = FALSE,
#              keep_going = TRUE
# )

# paper -----------------------------------------------------------------------

# not running in parallel because mclapply gets stuck sometimes

drake_config(plan_paper,
             # targets = c("bm_vi_task_svm_borda_mbo", "bm_vi_task_xgboost_borda_mbo",
             #             "bm_vi_task_rf_borda_mbo"),
             #targets = "bm_vi_task_xgboost_borda_mbo",
             verbose = 2, lazy_load = "eager",
             packages = NULL,
             console_log_file = "log/drake.log",
             caching = "master",
             template = list(log_file = "log/worker%a.log", n_cpus = 4,
                             memory = 8000, job_name = "paper2", partition = "all"),
             # prework = quote(future::plan(future.callr::callr, workers = 4)),
             # prework = quote(future::plan(future::multisession, workers = 4)),
             prework = list(quote(load_packages()),
                            quote(set.seed(1, "L'Ecuyer-CMRG")),
                            quote(parallelStart(mode = "multicore", cpus = 4,
                                                level = "mlr.resample",
                                                mc.cleanup = TRUE,
                                                mc.preschedule = FALSE))
             ),
             garbage_collection = TRUE, jobs = 21, parallelism = "clustermq",
             keep_going = TRUE, recover = FALSE, lock_envir = TRUE,
             log_progress = TRUE
)

