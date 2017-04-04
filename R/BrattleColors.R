BrattleColors <-
function(x = 5){
    colors.brattle <- c(
      brattle.blue = "#00467f",  #   0  70 127
      aqua         = "#7fb9c2",  # 127 185 194
      red          = "#ef4623",  # 239  70  35
#     orange       = "#f47735",  # 244 119  53
#     plum         = "#660460"   # 102   4  96
#     emerald      = "#00a18e"   #   0 161 142
      citron       = "#d5d10e",  # 213 209  14
      olive        = "#8a8d09"   # 138 141   9
    )
    if(class(x) %in% c("numeric", "integer") && length(x) == 1L){
      if(x > 5){
        warning("Palette is limited to five colors")
        x <- 5
      }
      x <- seq_len(x)
    }
    if(!class(x) %in% c("numeric", "integer") && 
       !all(x %in% names(colors.brattle))){
      stop("Invalid color names")
    }
    val <- unname(colors.brattle[x])
    return(val)
}
