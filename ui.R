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
            submitButton('Calculate')),
            
            column(3,
                   h3("About"),
                   h4("This application is designed to calculate the required amount of solvent for a solution."),
                   h4("The user should enter the amount to be solubilised in gramms and the molecular weight of the material."),
                   h4("After having set the aimed concentration, the user should click on the 'Calculate' button"),
                   h4("The app returns the input data and the required volume of solvent in mililiters.")
            )
        ),
    mainPanel(
        h3('Result of the calculation'),
        h4('You entered the following data'),
        verbatimTextOutput("inputValue"),
        h4('The required volume of solvent is:'),
        verbatimTextOutput("vol")
        ))
)
   

    