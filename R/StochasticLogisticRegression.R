#' @name StochasticLogisticRegression
#'
#' @title StochasticLogisticRegression
#'
#' @description Fits a simple logistic regression model, but then samples a single draw of the model coefficients (with probability proportional to their likelihood) and uses these for future prediction
#'
#' @details Coefficients are simulated from the likelihood density using the approximate hessian matrix, under an assumption of multivariate normality. This module is intended for use in a Monte Carlo simulation procedure to propagate uncertainty through an analysis. It is not intended to be used on its own!
#'
#' @param .df \strong{Internal parameter, do not use in the workflow function}. \code{.df} is data frame that combines the occurrence data and covariate data. \code{.df} is passed automatically in workflow from the process module(s) to the model module(s) and should not be passed by the user.
#'
#' @family model
#'
#' @author Nick Golding, \email{nick.golding.research@@gmail.com}
#'
#' @section Data type: presence/absence
#'
#' @section Version: 0.1
#'
#' @section Date submitted:  2016-06-16
StochasticLogisticRegression <- function (.df) 
{
    GetPackage("MASS")
    covs <- as.data.frame(.df[, attr(.df, 'covCols')])
    names(covs) <- attr(.df, 'covCols')
    
    m <- glm(.df$value ~ ., data = covs, family = "binomial")
    coef <- m$coefficients
    draw <- MASS::mvrnorm(1, na.omit(coef), vcov(m))
    coef_draw <- coef * NA
    coef_draw[match(names(draw), names(coef))] <- draw
    m$coefficients <- coef_draw
    ZoonModel(model = m, code = {
        stats::predict.glm(model, newdata, type = "response")
    }, packages = "stats")
}
