ClusterVCV <-
function(model, data, cluster.var){
  ### Checking arguments
  if(!any(class(model) %in% c("lm", "glm"))){
    stop("'model' must be of class 'lm' or 'glm'")
  }
  if(!any(class(data) == "data.frame")){
    stop("'data' must be a data frame")
  }
  if(length(cluster.var) != 1L || !any(cluster.var == names(data))){
    stop("'cluster.var' must be the name of a single variable in 'data'")
  }
   
  cluster.var <- data[rownames(model$model), cluster.var]
  cluster.var <- cluster.var[, drop = TRUE]
  M <- length(unique(cluster.var))
  N <- length(cluster.var)
  K <- model$rank
  ### small-sample correction cited by Cameron and Miller and used by Stata
  dfc <- (M/(M-1))*((N-1)/(N-K))
 
  uj <- apply(estfun(model), 2, function(x){
    tapply(x, cluster.var, sum)
  })
  vcv <- dfc * sandwich(model, meat. = crossprod(uj) / N)
  return(vcv)
}
