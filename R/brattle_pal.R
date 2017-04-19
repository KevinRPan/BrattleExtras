brattle_pal <-
function(){
  function(n){
    colors.brattle <- c(
      brattle.blue = "#00467f",  #   0  70 127
      aqua         = "#7fb9c2",  # 127 185 194
      red          = "#ef4623",  # 239  70  35
#     orange       = "#f47735", # 244 119  53
#     plum         = "#660460"  # 102   4  96
#     emerald      = "#00a18e"  #   0 161 142
      citron       = "#d5d10e",  # 213 209  14
      olive        = "#8a8d09"   # 138 141   9
    )
    if(n <= length(colors.brattle)){
        unname(colors.brattle[seq_len(n)])
    } else {
        viridis(n)
    }
    ### Works, but requires 'scales' pacakge
    # manual_pal(unname(colors.brattle))(n)
  }
}
