library(shiny)

EOQ <- function(PurchaseCost,CarryingCost,OrderingCost,Demand) round(sqrt((2*OrderingCost*Demand)/(PurchaseCost*CarryingCost/100)), digits = 0)

shinyServer(
  function(input, output) {  
    output$inputValue1 <- renderPrint({input$Demand})
    output$inputValue2 <- renderPrint({input$PurchaseCost})
    output$inputValue3 <- renderPrint({input$OrderingCost})
    output$inputValue4 <- renderPrint({input$CarryingCost})
    output$EconOrderQty <- renderPrint({EOQ(input$PurchaseCost,input$CarryingCost,input$OrderingCost,input$Demand)})
  }
  )
