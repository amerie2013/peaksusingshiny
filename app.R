library(shiny)
library(dplyr)
peak <- function(x){
  order_end   <- 1
  n <- 41
  order_end   <- 1
  start  <- rep(0, n)
  height   <- rep(0, n)
  end    <- rep(0, n)
  kind   <- rep(0, n)
  peaks <- data.frame(start,height, end, kind)
  for (j in 1:n) {
    for (i in order_end:(length(x)-5)){
      if (x[i+5]-x[i]>10){
        peaks$start[j] = (x[i])
        order_start = i
        break
      }
    }
    for (i in order_start:(length(x)-5)){
      if ((x[i]>x[i+1]) & (x[i]>x[i+2]) & (x[i]>x[i+3]) & (x[i]>x[i+4]) & (x[i]>x[i+5])){
        peaks$height[j] = x[i]
        order_high = i
        break
      }
    }
    for (i in order_high:(length(x)-5)){
      if (x[i+5]-x[i]>2){
        peaks$end[j] = (x[i])
        order_end = i
        break
      }
    }
    if (peaks$height[j]-peaks$start[j] > 200){
      peaks$kind[j]="HIGH PEAK"
    }
    else{
      peaks$kind[j]="MEDIUM PEAK"
    }
  }
  return(peaks)
}

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      fileInput("file1", "Choose CSV File"),
      selectInput("col", "Select a column", character(0))
    ),
    mainPanel(
      tableOutput("table"),
      textOutput("selected")
    )
  )
)

server <- function(input, output, session) {
  data <- reactive({
    inFile <- input$file1
    if (is.null(inFile)) return(NULL)
    read.csv(inFile$datapath)
  })
  
  observeEvent(data(), {
    updateSelectInput(session, "col", choices = names(data()))
  })
  
  output$table <- renderTable({
    req(data())
    head(data())
  })
  
  output$table <- renderTable({
    req(data())
    peak(data()[[input$col]])
  })
}

shinyApp(ui, server)