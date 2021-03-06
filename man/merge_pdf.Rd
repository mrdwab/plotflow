\name{merge_pdf}
\alias{merge_pdf}
\title{Muerge Differnt Sized Plots}
\usage{
  merge_pdf(n.plots, file, widths = 8, heights = 8,
    n.lines = 1, os = NULL)
}
\arguments{
  \item{n.plots}{The number of plots to be combined.}

  \item{file}{A connection, or a character string naming
  the file to print to.}

  \item{widths}{A vector of widths equal to \code{n.plots}
  or a single value that will be used for all plot widths.}

  \item{heights}{A vector of heights equal to
  \code{n.plots} or a single value that will be used for
  all plot widths.}

  \item{n.lines}{A vector of integer values indicating the
  number of lines each plotting sequance will take.
  Default is 1 line each.}

  \item{os}{An optional character string (\code{"unix",
  "win32", or "win64"}) that indicates the ghostscript
  version.  \code{merge_pdf} attempts to detect this
  automatically.}
}
\value{
  Returns a single combined plot of various sizes.
}
\description{
  Allows for merging of different sized R plots.
}
\note{
  To use with ggplot the plotting sequance must be wrapped
  with \code{plot()}.
}
\examples{
\dontrun{
\dontrun{
merge_pdf(3, file = "foo.pdf", widths = c(7, 7, 10), heights = c(6, 10, 7))
plot(1:10)
plot(1:10, pch=19)
plot(1:10, col="red", pch=19)

library(ggplot2)
p <- ggplot(mtcars, aes(factor(cyl), mpg)) + geom_boxplot()
merge_pdf(2, file = "bar.pdf", widths = c(7, 10), heights = c(6, 10))
plot(1:10)
print(p)
}
}
}
\keyword{plot}

