% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ROCcurve.R
\name{ROCcurve}
\alias{ROCcurve}
\title{an ROC-curve with the AUC value plotted in the title}
\usage{
ROCcurve(.model, .ras, newwin = TRUE)
}
\arguments{
\item{.model}{\strong{Internal parameter, do not use in the workflow function}. \code{.model} is list of a data frame (\code{data}) and a model object (\code{model}). \code{.model} is passed automatically in workflow, combining data from the model module(s) and process module(s), to the output module(s) and should not be passed by the user.}

\item{.ras}{\strong{Internal parameter, do not use in the workflow function}. \code{.ras} is a raster layer, brick or stack object. \code{.ras} is passed automatically in workflow from the covariate module(s) to the output module(s) and should not be passed by the user.}

\item{newwin}{logical indicator (default: true) to specify whether the plot should be made in a new window}
}
\description{
The module retrieves output from a presence only, or presence-absence model and outputs an ROC-curve with the AUC-value above it  it uses the evaluate function from dismo.
}
\details{
The module writes the ROC-plot to whatever is opened by dev.new() this can be changed to plot in the current output device by setting the option newwin=FALSE
}
\section{Data type}{
 presence-only, presence/absence, presence/background
}

\section{Version}{
 0
}

\section{Date submitted}{
  2016-06-15
}
\author{
E.E. van Loon, \email{e.e.vanloonD@uva.nl}
}
\seealso{
Other output: \code{\link{Appify}},
  \code{\link{InteractiveCovariateMap}},
  \code{\link{InteractiveMap}}, \code{\link{NoOutput}},
  \code{\link{PerformanceMeasures}},
  \code{\link{PredictNewRasterMap}},
  \code{\link{PrintMap}}, \code{\link{ResponseCurveViz}},
  \code{\link{ResponseCurve}},
  \code{\link{SameTimePlaceMap}}, \code{\link{SeparatePA}},
  \code{\link{SurfaceMap}},
  \code{\link{VariableImportance}}
}

