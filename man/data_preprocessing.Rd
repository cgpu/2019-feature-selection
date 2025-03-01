% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/02-fun-data-preprocessing.R
\name{data_preprocessing}
\alias{data_preprocessing}
\alias{clean_single_plots}
\title{Data preprocessing}
\usage{
clean_single_plots(data)
}
\arguments{
\item{data}{(\code{list})\cr List containing multiple \code{data.frames}.}
}
\description{
\code{clean_single_plots()}:
\itemize{
\item Removes columns with \code{NA} values and cols containing \code{"ID"}
\item Removes the \code{sf} geometry column.
}
}
\details{
Remove columns with NA values and "ID" columns
}
