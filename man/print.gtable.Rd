\name{print.gtable}
\alias{print.gtable}
\title{Print figure with footnotes}
\description{Prints a ggplot figure with footnotes added.}
\usage{
print(plot)
print.gtable(plot)
}
\arguments{
  \item{plot}{A figure with footnotes added}
}
\author{
Charlie Gibbons}
\examples{
p <- qplot(carat, price, data = diamonds, color = cut)
ggfootnote(p, "Source: diamonds data distributed with the ggplot package",
              "Thanks Hadley!")
}
\keyword{internal}

