library(shiny)

shinyUI(pageWithSidebar(
  
  #EOQ Calculation Application
  headerPanel("Economic Order Quantity Calculator"),
  
  sidebarPanel(
    sliderInput('PurchaseCost', 'Product Purchase Cost in USD/unit', min = 0, max = 20000, value = 100, step = 1,),
    sliderInput('CarryingCost', 'Inventory Carrying Cost in % per year', min = 0, max = 50, value = 15, step = 1,),
    sliderInput('OrderingCost', 'Ordering Cost in USD/order', min = 0, max = 250, value = 10, step = 1,),
    sliderInput('Demand', 'Annual Forecasted Demand in units/year', min = 0, max = 50000, value = 1000, step = 100,)
    ),
    
  
  mainPanel(    
    h3('Inventory Policy (EOQ)'),
    
    h4('For an annual forecasted demand in units/year of '),
    verbatimTextOutput("inputValue1"),
    
    h4('given the product purchase cost in USD/unit of '),
    verbatimTextOutput("inputValue2"),
    
    h4('an ordering cost in USD/order of '),
    verbatimTextOutput("inputValue3"),
    
    h4('and an annual carrying cost in % per year of '),
    verbatimTextOutput("inputValue4"),
    
    h4('the recommended Economic Order Quantity in units/order is: '),
    verbatimTextOutput("EconOrderQty")
    
     )    
  ))
