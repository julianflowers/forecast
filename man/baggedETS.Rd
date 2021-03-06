\name{baggedETS}
\alias{baggedETS}

\title{Forecasting using the bagged ETS method}
\usage{baggedETS(y, bootstrapped_series=bld.mbb.bootstrap(y, 100), ...)
}

\arguments{
\item{y}{A numeric vector or time series of class \code{ts}.}
\item{bootstrapped_series}{bootstrapped versions of y.}
\item{\dots}{Other arguments passed to \code{\link{ets}}.}
}

\description{The bagged ETS forecasting method.}

\details{This function implements the bagged ETS forecasting method described in Bergmeir et al. The \code{\link{ets}} function is applied to all bootstrapped series. Using the default parameters, the function \code{\link{bld.mbb.bootstrap}} is used to calculate the bootstrapped series with the Box-Cox and Loess-based decomposition (BLD) bootstrap. The function \code{\link{forecast.baggedETS}} can then be used to calculate forecasts.}

\value{Returns an object of class "\code{baggedETS}".

The function \code{print} is used to obtain and print a summary of the
results.

\item{models}{A list containing the fitted ETS ensemble models.}
\item{method}{The name of the forecasting method as a character string}
\item{y}{The original time series.}
\item{bootstrapped_series}{The bootstrapped series.}
\item{etsargs}{The arguments passed through to \code{\link{ets}}.}
\item{fitted}{Fitted values (one-step forecasts). The mean is of the fitted values is calculated over the ensemble.}
\item{residuals}{Original values minus fitted values.}
}

\references{Bergmeir, C., R. J. Hyndman, and J. M. Benitez (2016). Bagging Exponential Smoothing Methods
using STL Decomposition and Box-Cox Transformation. International Journal of Forecasting 32,
303-312.
}

\author{Christoph Bergmeir, Fotios Petropoulos}

\examples{fit <- baggedETS(WWWusage)
fcast <- forecast(fit)
plot(fcast)
}

\keyword{ts}
