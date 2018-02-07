ggshadow_histogram <- function(data, mapping = aes(), facet_var,
  nrow = NULL, ncol = NULL,
  bg_fill = "grey", bg_alpha = 0.5, ...){
  ggplot(data, mapping) +
    geom_histogram(data = data[, names(data) != facet_var], fill = bg_fill, alpha = bg_alpha) +
    geom_histogram(...) +
    facet_wrap(facet_var, nrow, ncol)
}

ggshadow_point <- function(data, mapping = aes(), facet_var,
  nrow = NULL, ncol = NULL,
  bg_color = "grey", bg_alpha = 0.5, ...){
  ggplot(data, mapping) +
    geom_point(data = data[, names(data) != facet_var], color = bg_color, alpha = bg_alpha) +
    geom_point(...) +
    facet_wrap(facet_var, nrow, ncol)
}

ggshadow_line <- function(data, mapping = aes(), facet_var,
  nrow = NULL, ncol = NULL,
  bg_color = "grey", bg_alpha = 0.5, ...){
  ggplot(data, mapping) +
    geom_line(data = data[, names(data) != facet_var], color = bg_color, alpha = bg_alpha) +
    geom_line(...) +
    facet_wrap(facet_var, nrow, ncol)
}
