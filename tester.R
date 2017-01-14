#### server
server <- function(input, output, session) {

}

#### user interface
ui <- fluidPage(

        titlePanel("App with simple layout"),

        sidebarLayout(

                sidebarPanel(
                        "Sidebar"
                ), #endsidebarpanel

                mainPanel(
                        "This is the main panel",
                        audio('test.mp3'),
                        HTML("<audio src='test.mp3' type = 'audio/mp3' controls></audio>")

                        )
                )#end mainpanel
        )# end sidebarlayout
)

shinyApp(ui = ui, server = server)
