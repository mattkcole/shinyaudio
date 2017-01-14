#   http://r-pkgs.had.co.nz/
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' Add audio elements to a Shiny app
#'
#' Creates an audio element inside of a Shiny application
#'
#' @param src source of audio file
#' @param type audio file extension. ie. 'audio/mp3'
#' @param autoplay Should the file play automatically?
#' @param controls Should the user control playback?
#'
#' @return None
#'
#' @examples
#' audio()
#'
#' @export
audio <- function(src, type = " 'audio/mp3'", autoplay = F, controls = T){

        autoplay <- ifelse(autoplay == T, " autoplay", "")
        controls <- ifelse(controls == T, " controls", "")
        src <- paste("src='", src, "'", sep = "")

        return(HTML('<audio ',
        src,
        " type =", type,
        autoplay,
        controls,

              "></audio>", sep = ""))
}
