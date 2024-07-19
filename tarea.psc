Proceso cambio_moneda_sfchicaiza
	Definir moneda_1 como caracter
    Definir moneda_2 Como Caracter
	
	//Pedir la moneda inicial y la moneda a la que se quiere cambiar
	
    Escribir "Ingrese la moneda de origen (USD, EUR, GBP, AUD): "
    Leer moneda_1
	
    Escribir "Ingrese la moneda a la que desea hacer el cambio (USD, EUR, GBP, AUD): "
    Leer moneda_2
	
    Escribir "Ingrese la cantidad en ", moneda_1, ":"
    Leer cantidad_dinero
	
    Segun moneda_1 Hacer
        Caso "USD":
            Segun moneda_2 Hacer
                Caso "USD":
                    tasa_conversion <- 1
                Caso "EUR":
                    tasa_conversion <- 0.93
                Caso "GBP":
                    tasa_conversion <- 0.79
                Caso "AUD":
                    tasa_conversion <- 1.50
                De Otro Modo:
                    Escribir "La moneda ingresada no es válida. Por favor ingrese una opción entre USD, EUR, GBP o AUD."
                    
            FinSegun
			
			
        Caso "EUR":
            Segun moneda_2 Hacer
                Caso "USD":
                    tasa_conversion <- 1.07
                Caso "EUR":
                    tasa_conversion <- 1
                Caso "GBP":
                    tasa_conversion <- 0.85
                Caso "AUD":
                    tasa_conversion <- 1.61
                De Otro Modo:
                    Escribir "La moneda ingresada no es válida. Por favor ingrese una opción entre USD, EUR, GBP o AUD."
                    
            FinSegun
			
        Caso "GBP":
            Segun moneda_2 Hacer
                Caso "USD":
                    tasa_conversion <- 1.27
                Caso "EUR":
                    tasa_conversion <- 1.18
                Caso "GBP":
                    tasa_conversion <- 1
                Caso "AUD":
                    tasa_conversion <- 1.90
                De Otro Modo:
                    Escribir "La moneda ingresada no es válida. Por favor ingrese una opción entre USD, EUR, GBP o AUD."
                    
            FinSegun
			
        Caso "AUD":
            Segun moneda_2 Hacer
                Caso "USD":
                    tasa_conversion <- 0.67
                Caso "EUR":
                    tasa_conversion <- 0.62
                Caso "GBP":
                    tasa_conversion <- 0.53
                Caso "AUD":
                    tasa_conversion <- 1
                De Otro Modo:
                    Escribir "La moneda ingresada no es válida. Por favor ingrese una opción entre USD, EUR, GBP o AUD."
                    
            FinSegun
			
        De Otro Modo:
            Escribir "La moneda ingresada no es válida. Por favor ingrese una opción entre USD, EUR, GBP o AUD."
    FinSegun        
	
    cantidad_convertida <- cantidad_dinero * tasa_conversion
    Escribir "La cantidad en ", moneda_2, " es ", cantidad_convertida
FinProceso