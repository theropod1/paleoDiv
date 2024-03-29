% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paleoDiv.R
\name{divdistr_}
\alias{divdistr_}
\title{Calculate total species diversity for any point in time based on a taxon-range table}
\usage{
divdistr_(
  x,
  table = NULL,
  w = rep(1, length(x)),
  smooth = 0,
  max = table$max,
  min = table$min
)
}
\arguments{
\item{x}{A point in time or vector of points in time, in ma, at which species diversity is to be determined.}

\item{table}{A taxon-range table to be used, usually the output of mk.sptab()}

\item{w}{A vector of weights to apply to the estimated (raw) diversity figures. This vector needs to be of the same length as x. Each raw diversity estimate will then be multiplied by the weight. Can be used to account for differences in collection intensity/sampling biases, if these can be quantified (e.g. by analyzing collection records.}

\item{smooth}{The smoothing margin, in units of ma. Corresponds to the plusminus parameter of rmeana(). Defaults to 0, i.e. no smoothing (beyond the resolution determined by the resolution of x)}

\item{max}{Vector or column containing the maximum age of each entry in the taxon-range table. Defaults to table$max}

\item{min}{Vector or column containing the minimum age of each entry in the taxon-range table. Defaults to table$min}
}
\value{
A numeric vector containing taxon diversity (at the chosen taxonomic level used in the generation of the range table) at the provided ages.
}
\description{
Calculate total species diversity for any point in time based on a taxon-range table
}
\details{
divdistr_() produces a "maximum" estimate of taxonomic diversity at any given point in time in the fossil record. This function is based on the principle of counting the number of taxon ranges (from the provided range table) that overlap each age provided in x. As a result of uncertainty of age estimates, this may lead to an overestimation of the actual fossil diversity at each point in time, especially at the points of overlap between taxon-specific ranges. Moreover this represents a "raw", uncorrected diversity estimate that does not account for differences in sampling intensity throughout the time interval that is investigated. A rudimentary functionality for using such a correction exists in the form of the w argument, which allows the user to provide a vector of weights (of the same length as x) to be multiplied with the raw diversity estimates. Such weights can, for instance, be based on (the inverse of) the number of collections overlapping any given age in x, which can be calculated using the same basic approach as the raw diversity, by downloading collections instead of occurrence data.
}
\examples{
data(archosauria)
divdistr_(c(170:140),table=archosauria$sptab_Stegosauria)
curve(divdistr_(x,archosauria$sptab_Stegosauria), xlim=c(200,100),ylim=c(-5,35))
ts.stages(ylim=c(-6,-1),alpha=0.3,border=add.alpha("grey"))
ts.periods(ylim=c(-6,-1),alpha=0.0)
}
