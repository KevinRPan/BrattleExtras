\name{ggshadow_point}
\alias{ggshadow_line}
\alias{ggshadow_histogram}
\title{Create faceted shadow plots}
\description{These functions create faceted shadow plots (all observations are
	shown in every facet greyed out with the facet's observations shown on
	top).}
\usage{
ggshadow_histogram(data, mapping = aes(), facet_var,
  nrow = NULL, ncol = NULL, bg_fill = "grey", bg_alpha = 0.5, ...)

ggshadow_point(data, mapping = aes(), facet_var,
  nrow = NULL, ncol = NULL, bg_color = "grey", bg_alpha = 0.5, ...)

ggshadow_line(data, mapping = aes(), facet_var,
  nrow = NULL, ncol = NULL, bg_color = "grey", bg_alpha = 0.5, ...)
}
\arguments{
  \item{\dots}{Arguments passed to corresponding \code{viridis} function
		(see below)}
	\item{data}{Data frame}
	\item{mapping}{Aesthetic mapping as in \code{ggplot}}
	\item{facet_var}{Character string of name of facet variable}
	\item{nrow}{Number of rows for faceted plot}
	\item{ncol}{Number of columns for faceted plot}
	\item{bg_color}{Color of background points}
	\item{bg_alpha}{Alpha value for background points}
  \item{\dots}{Arguments passed to plotted geom}
}
\author{Charlie Gibbons}
\seealso{\code{\link{ggplot}}, \code{\link{geom_histogram}},
	\code{\link{geom_point}}, \code{\link{geom_line}}
	\code{\link{facet_wrap}} from the \code{ggplot} package. The
  \code{gghighlight} package provides related functions with somewhat
  different functionality.
}
\examples{
ggshadow_histogram(diamonds, aes(carat), "cut")

### Reduce opacity due to overplotting;
### 'alpha' refers to facet points, 'bg_alpha' to shadows
ggshadow_point(diamonds, aes(carat, price), "cut",
  alpha = 0.2, bg_alpha = 0.1)
}
\keyword{figures}
