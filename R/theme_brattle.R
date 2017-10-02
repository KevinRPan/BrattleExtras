theme_brattle <- function (include.y.axis = TRUE, include.tr.axes = FALSE, facet.text.bold = FALSE,
                           include.gridlines = TRUE, is.black.white = NULL, base_size = NULL, base_family = NULL)
{
    if (!is.null(base_family) && !base_family %in% font.families()){
        warning("Font family is deprecated--using 'sans'", call = FALSE)
        base_family = "sans"
    }
    if (!is.null(is.black.white)){
        warning("'is.black.white' is deprecated and does nothing")
    }
    base <- theme()
    if(!is.null(base_family)){
        base <- base + theme(text = element_text(family = base_family))
    }
    if(!is.null(base_size)){
        base <- base + theme(text = element_text(size = base_size))
    }
    if (!include.y.axis) {
        base <- base + theme(axis.line.y  = element_blank(),
                             axis.ticks.y = element_blank())
    }
    if (include.tr.axes) {
        base <- base + theme(panel.border = element_rect(fill = NA,
            colour = "#6a7277")) # gray.dark
    }
    if (!include.gridlines) {
        base <- base + theme(panel.grid.major = element_blank(),
            panel.grid.minor = element_blank())
    }
    if (facet.text.bold) {
        base <- base + theme(strip.text   = element_text(face = "bold"),
                             strip.text.x = element_text(face = "bold"),
                             strip.text.y = element_text(face = "bold"))
    }
    base
}
