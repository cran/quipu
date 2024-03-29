\name{rquipu}
\alias{rquipu}
\title{Creates quipu-type charts for a set of SSR markers}
\usage{
rquipu(data, a.subset = c("all"), ylim = c(50, 350), res = c(1500, 1200),
  dir.print = tempdir(), dir.logo = NA, col.node = c("red3", "green",
  "blue", "gray50"), col.marg = c("gray60", "black", "black"),
  species.name = NA, set.name = NA, img.format = c("screen", "jpeg",
  "jpg", "png"), ltr.size = 0.8, show.accs.total = TRUE,
  id.label = "Identifier", node.size = c(1.5, 1.2, 0.9, 0.6),
  grp.brks = c(0.01, 0.05, 0.1), obs.alls.frq = NULL,
  obs.alls.frq.ref = "dataset", layout = c("full", "no text"))
}
\arguments{
  \item{data}{a data.frame with minimal four columns:
  accession_id, primer_name, marker_size, map_location;
  alternatively,}

  \item{a.subset}{a vector of accession identifiers}

  \item{ylim}{the range of marker sizes (or alleles) in
  base pair (bp) units}

  \item{res}{the resolution of the final image in pixels
  (width, height)}

  \item{dir.print}{the directory to use for storing the
  created images}

  \item{dir.logo}{the path to a logo to display on the
  chart}

  \item{col.node}{colors for the chart elements}

  \item{col.marg}{colors for the chart margin elements}

  \item{species.name}{scientific name of the species of the
  set of accessions}

  \item{set.name}{a name for the set of accessions}

  \item{img.format}{specify a format for the final chart
  (jpeg or png)}

  \item{ltr.size}{letter size}

  \item{show.accs.total}{a logical value to show the number
  of accessions from the dataset}

  \item{id.label}{label for identifier}

  \item{node.size}{size of circle diameter for allele
  circles by frequency group}

  \item{grp.brks}{cut-off values between frequency groups;
  must be three values between 0 and 1 and in ascending
  order}

  \item{obs.alls.frq}{observed allele frequencies; format
  three-column data frame with heads: Marker, Marker.Size,
  Frequency.}

  \item{obs.alls.frq.ref}{a reference to the source of the
  allele frequencies}

  \item{layout}{whether a full chart or one without text;
  use 'full' or 'no text'.}
}
\description{
The chart shows SSR marker weights on a linear scale where
each allele or 'gel band' is represented by a circle. The
circle's diameter can be sized and colored by its rareness.
Two parameters 'col.fig' and 'grp.size'allow to do so. The
'rareness' can be calculated - by default - based only on
the dataset at hand or by a supplied reference table. To do
so, the parameter 'obs.alls.frq' expects a dataframe with
three columns named 'Marker', 'Marker.Size' and
'Frequency'. Another parameter, 'obs.alls.frq.ref' should
be used to supply a character string containing the
reference to the source of allele frequencies being used.
For visualization purposes, the class breaks can be defined
using a vector of three numeric values in the range between
0 and 1 and be passed to the parameter 'grp.brks'. The
default is 0.01, 0.05 and 0.001.
}
\details{
The chart was motivated by the need to represent genetic
uniqueness of potato plant materials in a given set for a
catalogue and the Andean tradition of quipus.
}
\examples{
library(quipu)

data(potato.quipu)
dat = potato.quipu

str(dat)

rquipu(dat)

rquipu(dat, layout="no text", res=c(600,400))
}
\author{
Reinhard Simon, Pablo Carhuapoma
}

