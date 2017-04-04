\name{BrattleGrays}
\alias{BrattleGrays}
\title{Access the Brattle gray color palette
}
\description{Function used to access the Brattle gray color palette}
\usage{
BrattleGrays(x)
}
\arguments{
\item{x}{If \code{x} is NULL, the full palette; if it is the name of a gray, that gray's hexidecimal value; otherwise an error}
}
\value{Unnamed character string of a single hexidecimal color value
}
\author{
Charlie Gibbons}
\examples{
### There are only two colors in the palette
BrattleGrays()

ggplot(diamonds, aes(carat, price)) + 
  geom_rect(aes(xmin = 1, xmax = 2, ymin = -Inf, ymax = Inf), fill = BrattleGrays("warm")) +
  geom_point()
}
\keyword{color}

