\name{ClusterVCV}
\alias{ClusterVCV}
\title{
Calculate clustered standard errors for (generalized) linear models}
\description{
This function is retained for backward compatibility, but is otherwise
deprecated. See the \code{multiwayvcov} package for a general
alternative or the \code{plm} package for a linear fixed effects model
version.}
\usage{
ClusterVCV(model, data, cluster.var)
}
\arguments{
  \item{model}{A model of class \code{lm} or \code{glm}}
  \item{data}{Data frame used in estimation}
  \item{cluster.var}{Character name of the clustering variable
}
}
\details{
The code implements the small sample correction of Cameron and Miller (2013).
}
\value{
Variance-covariance matrix
}
\references{
Cameron, A. Colin and Douglas L. Miller. 2013. "A Practitioner's Guide to Cluster-Robust Inference." Journal of Human Resources (forthcoming).
}
\author{
Charlie Gibbons
}
\examples{
mtcars$cyl <- factor(mtcars$cyl)
reg <- lm(mpg ~ wt + cyl, data = mtcars)
vcv <- ClusterVCV(reg, mtcars, "cyl")

### To access the handy 'coeftest' function
library(lmtest)

### Not clustered
summary(reg)

### Clustered (it's interesting to note that the SEs get *smaller*)
coeftest(reg, vcv)
}

\keyword{regression}

