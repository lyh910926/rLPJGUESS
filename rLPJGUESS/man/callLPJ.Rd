% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/callLPJ.R
\name{callLPJ}
\alias{callLPJ}
\title{A function to call the LPJ-GUESS modell}
\usage{
callLPJ(mainDir, runDir, template2, mode)
}
\arguments{
\item{mainDir}{a character string indicating the path to LPJ-GUESS executable}

\item{runDir}{a character string indicating the path to the runDirectory}

\item{template2}{a character string providing the  "specific" model template,
e.g, global_cf.ins or global_cru.ins. Provide only the file name, not the path.
If not provided, package templates will be used}

\item{mode}{a character string indicating whether using cru or cf data}
}
\value{
none
}
\description{
This function does a system call, passing a template to the LPJ
 model.
}
\details{
Please note that this function is integrated in \code{\link{runLPJ}}.
}
\note{
Based an older code of Istem Fer, Uni Potsdam
}
\examples{
\dontrun{
# main directory
mainDir <- "/some/absolute/path/mainDir"
list.files(mainDir)
[1] "guess" or "guesscmd.exe"  # link to the model executable
[2] "gridlist.txt"      # list of gridcells
[3] "global.ins"        # template1 (optional)
[4] "global_cru.ins"    # template2 (optional)

# The run directory that is whithin the mainDir
runDir <- "/some/absolute/path/mainDir/runDirectory"

## mode cru ##
# The template2 of the model what is within the runDirectoy.
template2 <- "global_cru.ins"
template2 <- "europe_cru.ins"

# Call the model
callLPJ(mainDir = mainDir, runDir = runDir, template2 = template2, mode = "cru")

## mode cf ##
# The template2 of the model what is within the runDirectoy.
template2 <- "global_cf.ins"
template2 <- "europe_cf.ins"

# Call the model
callLPJ(mainDir = mainDir, runDir = runDir, template2 = template2, mode = "cf")
}
}
\author{
Ramiro Silveyra Gonzalez, Maurizio Bagnara, Florian Hartig
}
\keyword{rLPJGUESS}

