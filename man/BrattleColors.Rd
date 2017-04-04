\name{BrattleColors}
\alias{BrattleColors}
\title{Access the Brattle color palette
}
\description{Function used to access the Brattle color palette}
\usage{
BrattleColors(x)
}
\arguments{
\item{x}{If \code{x} is a single numeric or integer, then the number of colors to return; if \code{x} is a character vector, the named colors to return}
}
\value{Unnamed character string of hexidecimal color values
}
\author{
Charlie Gibbons}
\examples{
### There are only five colors in the palette
BrattleColors()

qplot(carat, price, data = diamonds) + 
  geom_point(color = BrattleColors("aqua"))
}
\keyword{color}

