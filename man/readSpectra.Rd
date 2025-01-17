% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readSpectra.R
\name{readSpectra}
\alias{readSpectra}
\title{Function to read spectra.}
\usage{
readSpectra(filelist, wave_unit = "wavenumber",
  measurement_unit = NULL, ...)
}
\arguments{
\item{filelist}{A vector (e.g., the output of \code{list.files(full.names =
TRUE)}) containing the file paths for spectra to read.}

\item{wave_unit}{"wavenumber" or "wavelength".}

\item{measurement_unit}{"absorbance" or "transmittance" or "reflectance".}

\item{...}{additional agruments.}
}
\value{
Returns an object of class \code{spectra.matrix}.
}
\description{
This function accepts a vector of file paths specifying files that contain
spectra. The function incorporates these spectra into a single
\code{spectra.matrix} object. The function supports .dpt, .txt, opus binary
(e.g., .0), and .spc files. Files import for .spc files is done using the
package \code{hpyerSpec} and import of opus format is done using the package
\code{soil.spec}. These formats are auto detected. Feel free to
request/suggest file formats. NOTE: opus file support has been temporarily 
suspended due to installations issues created by deprecation of soil.spec.
}
\examples{

\dontrun{
# MY_PATH = is a text string identifying the folder with the spectra 
specs <- readSpectra(filelist = list.files("MY_PATH", full.names = T))
}

}
\references{
Claudia Beleites and Valter Sergo: hyperSpec: a package to handle
  hyperspectral data sets in R', R package version 0.99-20171005. 
  http://hyperspec.r-forge.r-project.org
  Andrew Sila, Tomislav Hengl and Thomas Terhoeven-Urselmans (2014). 
  soil.spec: Soil Spectroscopy Tools and Reference Models. R package version 
  2.1.4. https://CRAN.R-project.org/package=soil.spec
}
\author{
Daniel M Griffith
}
\keyword{read/write/fileio}
