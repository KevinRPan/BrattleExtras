ggfootnote <- function(plot, ...){
  assert_is_identical_to_true(inherits(plot, "ggplot"))
  dots <- list(...)
  assert_all_are_true(sapply(dots, class) == "character")
  
  footnote <- paste(dots, collapse = "\n")
  g <- arrangeGrob(plot, bottom = textGrob(footnote, x = 0, just = "left", hjust = 0, vjust = 0.5, gp = gpar(fontsize = 9, lineheight = 1)))
  dev.off()
  return(g)
}