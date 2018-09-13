brattle_html <- function(toc = TRUE,
                         toc_float = TRUE,
                         number_sections = FALSE,
                         fig_width = 8,
                         fig_height = 6,
                         fig_caption = TRUE,
                         df_print = 'kable',
                         code_folding = 'hide',
                         ...
                         ) {
  css <- system.file("rmarkdown/templates/brattle_html/resources/brattle_html.css", package = "BrattleExtras")

  # call the base html_document function
  rmarkdown::html_document(fig_width = fig_width,
                           fig_height = fig_height,
                           fig_caption = fig_caption,
                           highlight = NULL,
                           theme = NULL,
                           css = css,
                           df_print = df_print,
                           code_folding = code_folding,
                           toc = toc,
                           toc_float = toc_float,
                           number_sections = number_sections,
                           ...)

}