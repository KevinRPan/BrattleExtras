\name{scale_color_brattle}
\alias{scale_color_brattle}
\alias{scale_colour_brattle}
\alias{scale_fill_brattle}
\title{Apply the Brattle palette to ggplot figures}
\description{Deprecated--users should not need to call these functions as of version 2.0. These functions apply the Brattle palette to ggplot figures.}
\usage{
scale_color_brattle(...)
scale_colour_brattle(...)
scale_fill_brattle(...)
}
\arguments{
  \item{\dots}{Arguments passed to corresponding \code{ggplot} function (see below)}
}
\author{
Charlie Gibbons}
\seealso{\code{\link{scale_color_discrete}}, \code{\link{scale_fill_discrete}} from the \code{ggplot2} package
}
\examples{
qplot(carat, price, data = diamonds, color = cut) + scale_color_brattle("Cut")
}

\keyword{color}
