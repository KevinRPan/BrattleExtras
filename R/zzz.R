.onLoad <- function(libname, pkgname) {
    ## Calibri isn't working--use sans for now
    base_family = "sans"

    ## Define colors
    brattle.blue <- "#00467f"
    gray.dark <- "#6a7277"
    gray.warm <- "#cccdc3"
    gray.font <- "#000000" # Switched to black in new format "#302f35"
    gridlines <- "#cac9cf"
    text_margin = margin(4, 4, 4, 4)
    base_size <- 11

    ## Update ggplot theme
    base <- theme_update(
        line = element_line(colour = "black", size = 0.5, linetype = 1, lineend = "butt"),
        rect = element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1),
        text = element_text(family = base_family, face = "plain", colour = "black", size = base_size, hjust = 0.5,
            vjust = 0.5, angle = 0, lineheight = 0.9, margin = text_margin, debug = FALSE),
        plot.background = element_rect(colour = "white"),
        plot.title = element_text(size = rel(1.35), hjust = 0.5, colour = brattle.blue, face = "bold", margin = margin(t = 0, b = 7), debug = FALSE),
        plot.subtitle = element_text(size = rel(1), hjust = 0.5, colour = brattle.blue, margin = margin(t = 0, b = 5), debug = FALSE),
        panel.background = element_blank(),
        panel.border = element_blank(),
        panel.grid.major = element_line(colour = gridlines, size = 0.3, linetype = "dotted"),
        panel.grid.minor = element_line(colour = gridlines, size = 0.2, linetype = "dotted"),
        axis.text = element_text(size = rel(1), colour = gray.font, margin = text_margin, debug = FALSE),
        axis.text.x = element_text(vjust = 1, colour = gray.font, margin = text_margin, debug = FALSE),
        axis.text.y = element_text(hjust = 1, colour = gray.font, margin = text_margin, debug = FALSE),
        axis.title.x = element_text(colour = gray.font, face = "bold", margin = text_margin, debug = FALSE),
        axis.title.y = element_text(angle = 90, colour = gray.font, face = "bold", margin = text_margin, debug = FALSE),
        axis.line = element_line(colour = gray.dark, size = 0.3),
        axis.ticks = element_line(colour = gray.dark, size = 0.3),
        legend.background = element_rect(colour = NA),
        legend.key = element_rect(colour = NA, fill = NA),
        legend.text = element_text(size = rel(1), colour = gray.font, margin = text_margin, debug = FALSE),
        legend.title = element_text(size = rel(1), face = "bold", hjust = 0, colour = gray.font, margin = text_margin, debug = FALSE),
        legend.key.height = NULL,
        legend.key.width = NULL,
        legend.box = NULL,
        legend.title.align = NULL,
        legend.position = "right",
        legend.direction = NULL,
        legend.justification = "center",
        legend.text.align = NULL,
        strip.background = element_rect(fill = gray.warm, colour = gray.dark),
        strip.text = element_text(size = rel(1), colour = gray.font, margin = text_margin, debug = FALSE),
        strip.text.x = element_text(colour = gray.font, margin = text_margin, debug = FALSE),
        strip.text.y = element_text(angle = -90, colour = gray.font, margin = text_margin, debug = FALSE),
        complete = TRUE)

    ## Change default ggplot colors
    update_geom_defaults("point",     list(colour = BrattleColors(1)))
    update_geom_defaults("line",      list(colour = BrattleColors(1)))
    update_geom_defaults("bar",       list(fill   = BrattleColors(1),
                                           colour = "white"))
    update_geom_defaults("boxplot",   list(colour = BrattleColors(1)))
    update_geom_defaults("errorbar",  list(colour = BrattleColors("aqua")))
    update_geom_defaults("errorbarh", list(colour = BrattleColors("aqua")))
    update_geom_defaults("density",   list(colour = BrattleColors(1)))
    update_geom_defaults("smooth",    list(colour = BrattleColors("aqua"),
                                           fill   = gray.warm,
                                           alpha  = 0.7))
    update_geom_defaults("ribbon",    list(fill = gray.dark))
}

.onUnload <- function(libname, pkgname) {
    theme_set(theme_gray())
    scale_color_discrete  <- ggplot2::scale_color_discrete
    scale_colour_discrete <- ggplot2::scale_colour_discrete
    scale_fill_discrete   <- ggplot2::scale_fill_discrete
    update_geom_defaults("point",     list(colour = "black"))
    update_geom_defaults("line",      list(colour = "black"))
    update_geom_defaults("bar",       list(fill   = "black"))
    update_geom_defaults("boxplot",   list(colour = "black"))
    update_geom_defaults("errorbar",  list(colour = "black"))
    update_geom_defaults("errorbarh", list(colour = "black"))
    update_geom_defaults("density",   list(colour = "black"))
    update_geom_defaults("smooth",    list(colour = "blue",
                                           fill   = "gray"))
    update_geom_defaults("ribbon",    list(fill = "black"))
}
