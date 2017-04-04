\name{ggsubtitle}
\alias{ggsubtitle}
\title{Add a subtitle to a ggplot figure}
\description{This function adds a subtitle to a ggplot figure.}
\usage{
ggsubtitle(subtitle)
}
\arguments{
  \item{subtitle}{A string subtitle}
}
\details{Works like \code{ggtitle}.}
\seealso{\code{\link{ggtitle}} from the \code{ggplot2} package
}
\author{
Charlie Gibbons}
\examples{
qplot(carat, price, data = diamonds, color = cut) + ggtitle("Relationship between carats and price") + ggsubtitle("More carats mean higher prices!")
}

