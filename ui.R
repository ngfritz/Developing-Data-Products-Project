shinyUI(
    fluidPage(
        titlePanel("Molarity calculator"),
        fluidRow(
            column(3,
            h3('How much material do you have?'),
            numericInput('m', 'mass (g)', 0, min=0, max=1000),
            h3('What molar concentration do you need?'),
            numericInput('c1', '', 0)),
            
            column(3,
                   h3('What is your molecular weight?'),
                   numericInput('M', 'weight (daltons)', 0, min=0, max=1000),
            selectInput("c10", 
                        label = h3("Order of magnitude"), 
                        choices = list("mol (M)", "milimol (mM)", "micromol (uM)", "nanomol (nM)"),
                        selected = "micromol (uM)"),
            submitButton('Calculate'))
        ),
    mainPanel(
        h3('Result of the calculation'),
        h4('You entered the following data'),
        verbatimTextOutput("inputValue"),
        h4('The required volume of solvent is:'),
        verbatimTextOutput("vol")
        ))
)