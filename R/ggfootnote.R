ggfootnote <- function(plot, ..., use_small_text = TRUE){
  assert_is_identical_to_true(inherits(plot, "ggplot"))
  assert_is_a_bool(use_small_text)
  dots <- list(...)
  assert_all_are_true(sapply(dots, class) == "character")
  if(use_small_text){
      font_size <- 9
  } else {
      font_size <- 11
  }

  footnote <- paste(dots, collapse = "\n")
  g <- arrangeGrob(plot, bottom = textGrob(footnote, x = 0, just = "left", hjust = 0, vjust = 0.5, gp = gpar(fontsize = font_size, lineheight = 1)))
  dev.off()
  return(g)
}
