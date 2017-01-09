# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

library(shiny)


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

audio('test.mp3')

<audio src="test.mp3" type="audio/mp3" autoplay controls></audio>

HTML('<audio></audio>')
