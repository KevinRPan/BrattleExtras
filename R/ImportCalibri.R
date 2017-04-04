ImportCalibri <-
function(){
    a <- tryCatch(font.add("Calibri", regular = "calibri.ttf", bold = "calibrib.ttf",
                           italic = "calibrii.ttf", bolditalic = "calibriz.ttf"),
                  error = function(e){
                      warning("Using 'sans' font in ggplot figures", call. = FALSE)
                      return("sans")
                  })
    if(identical(a, "sans")){
        return(a)
    } else {
        return("Calibri")
    }
}
