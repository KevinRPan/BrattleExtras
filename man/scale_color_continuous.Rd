\name{scale_color_continuous}
\alias{scale_color_continuous}
\alias{scale_colour_continuous}
\alias{scale_color_gradient}
\alias{scale_colour_gradient}
\alias{scale_fill_continuous}
\alias{scale_fill_gradient}
\title{Apply the Brattle palette to ggplot figures}
\description{These functions override the standard ggplot versions to apply the viridis palette to ggplot figures.}
\usage{
scale_color_continuous(...)
scale_colour_continuous(...)
scale_color_gradient(...)
scale_colour_gradient(...)
scale_fill_continuous(...)
scale_fill_gradient(...)
}
\arguments{
  \item{\dots}{Arguments passed to corresponding \code{viridis} function (see below)}
}
\author{
Charlie Gibbons}
\seealso{\code{\link{scale_color_viridis}}, \code{\link{scale_fill_viridis}} from the \code{viridis} package
}
\examples{
qplot(carat, price, data = diamonds, color = cut) + scale_color_continuous("Cut")

### Revert to ggplot version
qplot(carat, price, data = diamonds, color = cut) + ggplot2::scale_color_continuous("Cut")
}
\keyword{color}
