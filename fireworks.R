# install.packages("pak")
pak::pak("hypebright/fireworks")
library(shiny)
library(fireworks)

ui <- fluidPage(
  tags$head(
    tags$style(
      HTML("body { 
              background-color: black;
              text-align: center;
            }")
    )
  ),
  tags$h2(
    "Happy New Year!",
    style = "color: white;"
  ),
  mainPanel(
    fireworks(id = "my_fireworks")
  )
)

server <- function(input, output) {

}

shinyApp(ui, server)