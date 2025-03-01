# SVM ---------------------------------------------------------------------

svm_borda_mbo <- makeTuneWrapper(filter_wrapper_svm_borda,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM Borda")

svm_info.gain_mbo <- makeTuneWrapper(filter_wrapper_svm_info.gain,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM Info Gain")

svm_gain.ratio_mbo <- makeTuneWrapper(filter_wrapper_svm_gain.ratio,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM Gain Ratio")

svm_relief_mbo <- makeTuneWrapper(filter_wrapper_svm_relief,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM Relief")

svm_variance_mbo <- makeTuneWrapper(filter_wrapper_svm_variance,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM Variance")

svm_rank.cor_mbo <- makeTuneWrapper(filter_wrapper_svm_rank.cor,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM Spearman")

svm_linear.cor_mbo <- makeTuneWrapper(filter_wrapper_svm_linear.cor,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM Pearson")

svm_mrmr_mbo <- makeTuneWrapper(filter_wrapper_svm_mrmr,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM MRMR")

svm_cmim_mbo <- makeTuneWrapper(filter_wrapper_svm_cmim,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM CMIM")

svm_carscore_mbo <- makeTuneWrapper(filter_wrapper_svm_carscore,
  resampling = inner,
  par.set = ps_svm_filter,
  control = tune.ctrl_svm_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM Car")

svm_no_filter_mbo <- makeTuneWrapper(lrn_svm,
  resampling = inner,
  par.set = ps_svm,
  control = tune.ctrl_svm_mbo, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM")

svm_pca_mbo <- makeTuneWrapper(pca_wrapper_svm,
  resampling = inner,
  par.set = ps_svm_pca,
  control = tune.ctrl_svm_mbo_pca, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "SVM PCA")

# XGBOOST -----------------------------------------------------------------

xgboost_borda_mbo <- makeTuneWrapper(filter_wrapper_xgboost_borda,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter,
  show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost Borda")

xgboost_info.gain_mbo <- makeTuneWrapper(filter_wrapper_xgboost_info.gain,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost Info Gain")

xgboost_gain.ratio_mbo <- makeTuneWrapper(filter_wrapper_xgboost_gain.ratio,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost Gain Ratio")

xgboost_relief_mbo <- makeTuneWrapper(filter_wrapper_xgboost_relief,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost Relief")

xgboost_variance_mbo <- makeTuneWrapper(filter_wrapper_xgboost_variance,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost Variance")

xgboost_rank.cor_mbo <- makeTuneWrapper(filter_wrapper_xgboost_rank.cor,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost Spearman")

xgboost_linear.cor_mbo <- makeTuneWrapper(filter_wrapper_xgboost_linear.cor,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost Pearson")

xgboost_mrmr_mbo <- makeTuneWrapper(filter_wrapper_xgboost_mrmr,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost MRMR")

xgboost_cmim_mbo <- makeTuneWrapper(filter_wrapper_xgboost_cmim,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost CMIM")

xgboost_carscore_mbo <- makeTuneWrapper(filter_wrapper_xgboost_carscore,
  resampling = inner,
  par.set = ps_xgboost_filter,
  control = tune.ctrl_xgboost_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost Car")

xgboost_no_filter_mbo <- makeTuneWrapper(lrn_xgboost,
  resampling = inner,
  par.set = ps_xgboost,
  control = tune.ctrl_xgboost_mbo, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost")

xgboost_pca_mbo <- makeTuneWrapper(pca_wrapper_xgboost,
  resampling = inner,
  par.set = ps_xgboost_pca,
  control = tune.ctrl_xgboost_mbo_pca, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "XGBoost PCA")

# Random Forest -----------------------------------------------------------

rf_borda_mbo <- makeTuneWrapper(filter_wrapper_rf_borda,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF Borda")

rf_info.gain_mbo <- makeTuneWrapper(filter_wrapper_rf_info.gain,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF Info Gain")

rf_gain.ratio_mbo <- makeTuneWrapper(filter_wrapper_rf_gain.ratio,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF Gain Ratio")

rf_relief_mbo <- makeTuneWrapper(filter_wrapper_rf_relief,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF Relief")

rf_variance_mbo <- makeTuneWrapper(filter_wrapper_rf_variance,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF Variance")

rf_rank.cor_mbo <- makeTuneWrapper(filter_wrapper_rf_rank.cor,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF Spearman")

rf_linear.cor_mbo <- makeTuneWrapper(filter_wrapper_rf_linear.cor,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF Pearson")

rf_mrmr_mbo <- makeTuneWrapper(filter_wrapper_rf_mrmr,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF MRMR")

rf_cmim_mbo <- makeTuneWrapper(filter_wrapper_rf_cmim,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF CMIM")

rf_carscore_mbo <- makeTuneWrapper(filter_wrapper_rf_carscore,
  resampling = inner,
  par.set = ps_rf_filter,
  control = tune.ctrl_rf_mbo_filter, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF Car")

rf_no_filter_mbo <- makeTuneWrapper(lrn_rf,
  resampling = inner,
  par.set = ps_rf,
  control = tune.ctrl_rf_mbo, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF")

rf_pca_mbo <- makeTuneWrapper(pca_wrapper_rf,
  resampling = inner,
  par.set = ps_rf_pca,
  control = tune.ctrl_rf_mbo_pca, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "RF PCA")

# RIDGE ---------------------------------------------------------------------

# ridge_borda_mbo <- makeTuneWrapper(filter_wrapper_ridge_borda,
#   resampling = inner,
#   par.set = ps_ridge_filter,
#   control = tune.ctrl_ridge_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge Borda")
#
# ridge_gain.ratio_mbo <- makeTuneWrapper(filter_wrapper_ridge_gain.ratio,
#   resampling = inner,
#   par.set = ps_ridge_filter,
#   control = tune.ctrl_ridge_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge Gain Ratio")
#
# ridge_info.gain_mbo <- makeTuneWrapper(filter_wrapper_ridge_info.gain,
#   resampling = inner,
#   par.set = ps_ridge_filter,
#   control = tune.ctrl_ridge_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge Info Gain")
#
# ridge_relief_mbo <- makeTuneWrapper(filter_wrapper_ridge_relief,
#   resampling = inner,
#   par.set = ps_ridge_filter,
#   control = tune.ctrl_ridge_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge Relief")
#
# ridge_carscore_mbo <- makeTuneWrapper(filter_wrapper_ridge_carscore,
#   resampling = inner,
#   par.set = ps_ridge_filter,
#   control = tune.ctrl_ridge_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge Car")
#
# ridge_linear.cor_mbo <- makeTuneWrapper(filter_wrapper_ridge_linear.cor,
#   resampling = inner,
#   par.set = ps_ridge_filter,
#   control = tune.ctrl_ridge_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge Pearson")
#
# ridge_mrmr_mbo <- makeTuneWrapper(filter_wrapper_ridge_mrmr,
#   resampling = inner,
#   par.set = ps_ridge_filter,
#   control = tune.ctrl_ridge_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge MRMR")
#
# ridge_cmim_mbo <- makeTuneWrapper(filter_wrapper_ridge_cmim,
#   resampling = inner,
#   par.set = ps_ridge_filter,
#   control = tune.ctrl_ridge_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge CMIM")

ridge_no_filter_mbo <- makeTuneWrapper(lrn_ridge,
  resampling = inner,
  par.set = ps_ridge,
  control = tune.ctrl_ridge_mbo, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "Ridge-MBO")

# ridge_pca_mbo <- makeTuneWrapper(pca_wrapper_ridge,
#   resampling = inner,
#   par.set = ps_ridge_filter_pca,
#   control = tune.ctrl_rf_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "ridge PCA")

# LASSO ---------------------------------------------------------------------

# lasso_borda_mbo <- makeTuneWrapper(filter_wrapper_lasso_borda,
#   resampling = inner,
#   par.set = ps_lasso_filter,
#   control = tune.ctrl_lasso_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso Borda")
#
# lasso_gain.ratio_mbo <- makeTuneWrapper(filter_wrapper_lasso_gain.ratio,
#   resampling = inner,
#   par.set = ps_lasso_filter,
#   control = tune.ctrl_lasso_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso Gain Ratio")
#
# lasso_info.gain_mbo <- makeTuneWrapper(filter_wrapper_lasso_info.gain,
#   resampling = inner,
#   par.set = ps_lasso_filter,
#   control = tune.ctrl_lasso_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso Info Gain")
#
# lasso_relief_mbo <- makeTuneWrapper(filter_wrapper_lasso_relief,
#   resampling = inner,
#   par.set = ps_lasso_filter,
#   control = tune.ctrl_lasso_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso Relief")
#
# lasso_carscore_mbo <- makeTuneWrapper(filter_wrapper_lasso_carscore,
#   resampling = inner,
#   par.set = ps_lasso_filter,
#   control = tune.ctrl_lasso_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso Car")
#
# lasso_linear.cor_mbo <- makeTuneWrapper(filter_wrapper_lasso_linear.cor,
#   resampling = inner,
#   par.set = ps_lasso_filter,
#   control = tune.ctrl_lasso_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso Pearson")
#
# lasso_mrmr_mbo <- makeTuneWrapper(filter_wrapper_lasso_mrmr,
#   resampling = inner,
#   par.set = ps_lasso_filter,
#   control = tune.ctrl_lasso_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso MRMR")
#
# lasso_cmim_mbo <- makeTuneWrapper(filter_wrapper_lasso_cmim,
#   resampling = inner,
#   par.set = ps_lasso_filter,
#   control = tune.ctrl_lasso_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso CMIM")

lasso_no_filter_mbo <- makeTuneWrapper(lrn_lasso,
  resampling = inner,
  par.set = ps_lasso,
  control = tune.ctrl_lasso_mbo, show.info = TRUE,
  measures = list(
    setAggregation(rmse, test.mean),
    setAggregation(rsq, test.mean),
    setAggregation(expvar, test.mean),
    timetrain, timeboth
  )
) %>%
  magrittr::inset("id", "Lasso-MBO")


# lasso_pca_mbo <- makeTuneWrapper(pca_wrapper_lasso,
#   resampling = inner,
#   par.set = ps_lasso_filter_pca,
#   control = tune.ctrl_rf_mbo, show.info = TRUE,
#       measures = list(       setAggregation(rmse, test.mean), setAggregation(rsq, test.mean),       setAggregation(expvar, test.mean),       timetrain, timeboth     )
# ) %>%
#   magrittr::inset("id", "lasso PCA")
