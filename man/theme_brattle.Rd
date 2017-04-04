\name{theme_brattle}
\alias{theme_brattle}
\title{Adjust the Brattle theme in ggplot figures}
\description{Adjust the Bratttle theme in ggplot figures.}
\usage{
theme_brattle(include.y.axis = TRUE, include.tr.axes = FALSE, include.gridlines = TRUE, 
  is.black.white = FALSE, base_size = 12, base_family = "Calibri")
}
\arguments{
  \item{include.y.axis}{Logical; should the y axis be drawn}
  \item{include.tr.axes}{Logical; should the top (t) and right (r) axes be drawn. Useful for faceted figures}
  \item{facet.text.bold}{Logical; should facet titles be bold}
  \item{include.gridlines}{Logical; should gridlines be drawn}
  \item{is.black.white}{Deprecated; no longer does anything}
  \item{base_size}{Numeric; base text size}
  \item{base_family}{Character; name of font family. sans is default.}
}
\details{This is mostly useful for controling faceted figures.

Some aspects of the Brattle style are not implemented. The y-axis is shown by default. The x-axis is always at the bottom of the plot and does not necessarily correspond to the y value of 0. Labels of discrete data levels are shown in a legend, rather than in the plot area.}
\author{Charlie Gibbons}

\examples{
qplot(carat, price, data = diamonds) + facet_wrap(~cut) +
  theme_brattle(include.tr.axes = TRUE, facet.text.bold = TRUE) + 
  geom_point() +
  ggtitle("The relationship between carat and price") +
  xlab("Carat") + ylab("Price")
}
\keyword{hplot}
