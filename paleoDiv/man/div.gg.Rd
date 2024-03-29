% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paleoDiv.R
\name{div.gg}
\alias{div.gg}
\title{Make a data.frame() that can be used to plot diversity data with density plots, e.g. in ggplot2}
\usage{
div.gg(data, taxa, agerange = c(252, 66), precision_ma = 1, prefix = "sptab_")
}
\arguments{
\item{data}{list()-object containing taxon-range tables}

\item{taxa}{Selection of taxa to include}

\item{agerange}{Range of geological ages to include in data.frame()}

\item{precision_ma}{Size of intervals (in ma) at which to calculate diversity within the age range.}

\item{prefix}{Prefix under which to find taxon-range tables in data}
}
\value{
A data.frame() with two columns: ma, for the numerical age, and tax, for the taxon.
}
\description{
Make a data.frame() that can be used to plot diversity data with density plots, e.g. in ggplot2
}
\details{
Each taxon receives one entry per subtaxon (e.g. species) occurring for each time interval at which it occurs. The number of entries per taxon at any given point is thus proportional to the diversity of the taxon, and can be used to trick density functions (e.g. hist(), density()) into plotting diversity diagrams of various types. This is most useful when using ggplot2::geom_violin(), geom_histogram() or geom_density() functions.
A simpler alternative to achieve a similar result would be to use the taxon-range-tables directly with these functions. However, this will lead to a relative underestimate of diversity for taxa with long-lived subtaxa, since each subtaxon will only be counted once. The div.gg()-function circumvents this problem by representing each taxon for each time interval in which it occurs, i.e. the relative number of entries in the returned data.frame will be proportional to the relative number of taxa with ranges overlapping each point in time.
}
\examples{
data(archosauria)
div.gg(archosauria, taxa=c("Pterosauria","Aves"), agerange=c(252,0),precision_ma=1)->flyers
library(ggplot2)
ggplot(data=flyers, aes(x=tax, y=ma))+ylim(252,0)+geom_violin(scale="count")
ggplot(data=flyers, aes(col=tax, x=ma))+xlim(252,0)+geom_density(adjust=0.5)
}
