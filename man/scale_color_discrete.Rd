\name{scale_color_discrete}
\alias{scale_color_discrete}
\alias{scale_colour_discrete}
\alias{scale_fill_discrete}
\title{Apply the Brattle palette to ggplot figures}
\description{These functions override the standard ggplot versions to apply the Brattle palette to ggplot figures.}
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
\seealso{\code{\link{ggplot2::scale_color_discrete}}, \code{\link{scale_fill_discrete}} from the \code{ggplot2} package
}
\examples{
qplot(carat, price, data = diamonds, color = cut) + scale_color_discrete("Cut")
}

\keyword{color}
