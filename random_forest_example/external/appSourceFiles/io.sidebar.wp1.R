# Datasets, variables
#output$dat.name <- renderUI({
#	selectInput("dat.name","Data:",choices=c("Flags"),selected="Flags")
#})

output$response <- renderUI({
	if(!is.null(dat()))	selectInput("response","Response variable:",varnamesfactors(),selected=varnamesfactors()[1])
})

output$explanatory <- renderUI({
	if(!is.null(input$selectDeselect)){
		if(input$selectDeselect %% 2 == 0){
			checkboxGroupInput("explanatory","Explanatory variables:",explanatoryvars(),selected=explanatoryvars())
		} else {
			checkboxGroupInput("explanatory","Explanatory variables:",explanatoryvars(),selected=NULL)
		}
	}
})

output$selectDeselect <- renderUI({
	if(!is.null(dat())){
		actionButton("selectDeselect", "Select/Deselect all")
	}
})

