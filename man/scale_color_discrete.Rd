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
\details{Note that the Brattle palette is only applied if there are five or fewer groups. If there are more than five groups, colors from the \code{viridis} package are applied.}
\author{
Charlie Gibbons}
\seealso{\code{\link{ggplot2::scale_colour_discrete}}, \code{\link{ggplot2::scale_fill_discrete}} from the \code{ggplot2} package
}
\examples{
qplot(carat, price, data = diamonds, color = cut) + scale_color_discrete("Cut")

### Revert to the ggplot version
qplot(carat, price, data = diamonds, color = cut) + ggplot2::scale_color_discrete("Cut")
}

\keyword{color}
