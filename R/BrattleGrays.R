BrattleGrays <- function(color = NULL){
  grays <- c("warm" = "#cccdc3", "dark" = "#6a7277")
  if(is.null(color)){
    return(grays)
  } else if (is_a_string(color) & color %in% names(grays)){
    return(unname(grays[color]))
  } else {
    stop("'color' is not a valid gray; call function with no argument to see options")
  }
}