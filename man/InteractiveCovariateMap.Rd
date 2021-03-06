% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/InteractiveCovariateMap.R
\name{InteractiveCovariateMap}
\alias{InteractiveCovariateMap}
\title{Output module: InteractiveCovariateMap}
\usage{
InteractiveCovariateMap(.model, .ras, which = 1)
}
\arguments{
\item{.model}{\strong{Internal parameter, do not use in the workflow function}. \code{.model} is list of a data frame (\code{data}) and a model object (\code{model}). \code{.model} is passed automatically in workflow, combining data from the model module(s) and process module(s), to the output module(s) and should not be passed by the user.#'}

\item{.ras}{\strong{Internal parameter, do not use in the workflow function}. \code{.ras} is a raster layer, brick or stack object. \code{.ras} is passed automatically in workflow from the covariate module(s) to the output module(s) and should not be passed by the user.}

\item{which}{which covariate to plot.
A single numeric giving the index of the covariate to plot}
}
\description{
Plot a zoomable and scrollable map of a covariate layer.
}
\section{Version}{
 1.0
}

\section{Date submitted}{
 2015-11-13
}
\author{
ZOON Developers, \email{zoonproject@gmail.com}
}
\seealso{
Other output: \code{\link{Appify}},
  \code{\link{InteractiveMap}}, \code{\link{NoOutput}},
  \code{\link{PerformanceMeasures}},
  \code{\link{PredictNewRasterMap}},
  \code{\link{PrintMap}}, \code{\link{ROCcurve}},
  \code{\link{ResponseCurveViz}},
  \code{\link{ResponseCurve}},
  \code{\link{SameTimePlaceMap}}, \code{\link{SeparatePA}},
  \code{\link{SurfaceMap}},
  \code{\link{VariableImportance}}
}

