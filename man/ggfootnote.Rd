\name{ggfootnote}
\alias{ggfootnote}
\title{Add footnotes to a ggplot figure}
\description{This function adds a series of strings as separate lines in the footer of a ggplot figure.}
\usage{
ggfootnote(plot, ..., use_small_text = TRUE)
}
\arguments{
  \item{plot}{A ggplot figure}
  \item{\dots}{A series of strings to appear as separate lines in the footer of the figure}
  \item{use_small_text}{Logical; should the footnote be set in a smaller font size than the rest of the plot?}
}
\details{This function does not work with the '+' notation used in ggplot. It should be called after the figure is otherwise complete, as the object returned is no longer a ggplot object and is not directly editable. Nonetheless, it works with \code{ggsave} as any ggplot figure.}
\value{A figure with footnotes}
\author{
Charlie Gibbons}
\examples{
p <- qplot(carat, price, data = diamonds, color = cut)
ggfootnote(p, "Source: diamonds data distributed with the ggplot package",
              "Thanks Hadley!")
}
