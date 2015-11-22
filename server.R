name<-c("mol (M)", "milimol (mM)", "micromol (uM)", "nanomol (nM)")
multiplier<-as.numeric()
multiplier<-c(1, 0.001, 0.000001, 0.000000001)
conc<-cbind(name, multiplier)
conc<-as.data.frame(conc)
conc$multiplier<-as.numeric(as.character(conc$multiplier))



shinyServer(
    function(input, output){
        v<-reactive({
            ct<-(with(conc, multiplier[name== input$c10]))
            c<-input$c1*ct
            vol<-(input$m/input$M)/c
        })
        output$inputValue<-renderText({
            paste(input$m, "g; ", input$M, "daltons; ", input$c1, input$c10)
        })
        
        output$vol<-renderText({paste (v(), "l")})
    }
)