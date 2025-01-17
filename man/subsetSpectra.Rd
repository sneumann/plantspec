% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/subsetSpectra.R
\name{subsetSpectra}
\alias{subsetSpectra}
\title{Function to subset regions of spectra.}
\usage{
subsetSpectra(spec, ranges)
}
\arguments{
\item{spec}{An object of class \code{spectra.matrix} to be subset.}

\item{ranges}{A two column matrix, each row contains max and min range
values. Alternatively, a list, where each element is a vector of length 2,
specifying the range (max/min) of a spectral region to select. Should be in 
the same units as your spectra (e.g., wavenumbers).}
}
\value{
Returns an object of class \code{spectra.list}.
}
\description{
This function accepts an object containing spectra and subsets it to a
specified region(s).
}
\examples{

\dontrun{
data(shootout)
s_mat <- matrix(data = c(2000,1750,1000,500), nrow = 2, ncol = 2, byrow = T)
sub_data <- subsetSpectra(spec = shootout_scans, ranges = s_mat)

par(mfrow=c(1,2))
plot(shootout_scans)
plot(sub_data)
}

}
\author{
Daniel M Griffith
}
\keyword{manipulation}
