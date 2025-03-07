#' @title Download data
#' @description
#' `download_trees()`: Download in-situ tree data
#'
#' @template url
#' @name download
download_trees <- function(url) {
  if (!file.exists("data/gpkg/oiartzun.shp")) {
    curl_download(url,
      destfile = glue(tempdir(), "/trees.zip"), quiet = FALSE
    )
    unzip(glue(tempdir(), "/trees.zip"), exdir = "data/gpkg")
  }

  files <- map(c("laukiz1", "laukiz2", "luiando", "oiartzun"), ~
  st_read(glue("data/gpkg/{.x}.gpkg"), quiet = TRUE))
  return(files)
}

#' @title Download data
#' @description
#' `download_trees()`: Download in-situ tree data
#'
#' @template url
#' @name download
download_aoi <- function(url) {
  if (!file.exists("data/gpkg/aoi.gpkg")) {
    curl_download(url,
                  destfile = "data/gpkg/aoi.gpkg", quiet = FALSE
    )
  }

  files <- st_read("data/gpkg/aoi.gpkg")
  return(files)
}

#' @description
#' `download_locations()`: Download plot location vector data
#' @inheritParams download_trees
#' @rdname download
download_locations <- function(url) {
  if (!file.exists("data/gpkg/plot-locations.gpkg")) {
    curl_download(url,
      destfile = "data/gpkg/plot-locations.gpkg", quiet = FALSE
    )
  }

  files <- st_read("data/gpkg/plot-locations.gpkg") %>%
    mutate(Name = as.character(ignore(Name)))
  return(files)
}

#' @description
#' `download_hyperspectral()`: Download hyperspectral data
#' @inheritParams download_trees
#' @rdname download
download_hyperspectral <- function(url) {
  if (!file.exists("data/hyperspectral/B101_P1N_A090F03_ATM_S.tif")) {
    curl_download(url,
      destfile = glue(tempdir(), "/hs.zip"), quiet = FALSE
    )
    unzip(glue(tempdir(), "/hs.zip"), exdir = "data/hyperspectral/")
  }

  files <- map(
    list.files("data/hyperspectral",
      full.names = TRUE, pattern = ".tif$"
    ),
    ~ brick(.x)
  )
  return(files)
}

#' @title Download data
#' @description
#' `download_forest_mask()`: Download the forest/non-forest mask.
#'
#' @template url
#' @name download
download_forest_mask <- function(url) {
  if (!file.exists("data/sentinel/forest-mask.gpkg")) {
    curl_download(url,
      destfile = "data/sentinel/forest-mask.gpkg", quiet = FALSE
    )
  }

  files <- st_read("data/sentinel/forest-mask.gpkg")
  return(files)
}
