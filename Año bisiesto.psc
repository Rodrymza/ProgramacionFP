//funcion para validar numeros ingresados
Funcion resultado=validaranio(a)
	definir diccionario como caracter
	diccionario="1234567890"
	resultado=falso
	para i=1 hasta longitud(a) con paso 1 Hacer
		para j=1 hasta longitud(diccionario) con paso 1 Hacer
			si subcadena(a,i,i)=subcadena(diccionario,j,j)
				cont=cont+1
				j=longitud(diccionario)+1
			FinSi
		FinPara
	FinPara
	si cont=longitud(a)
		resultado=verdadero
	FinSi
FinFuncion

Algoritmo Anio_bisiesto
	definir anio Como Entero
	definir bisiesto Como Logico
	repetir
		escribir "Ingrese un año"
		leer ingreso
		si validaranio(ingreso)=Verdadero
			anio=ConvertirANumero(ingreso)
		SiNo
			Limpiar Pantalla
			escribir "--->Ingrese un año valido<---"
		FinSi
		si anio<=0
			Limpiar Pantalla
			Escribir "--->Ingrese un año valido<---"
		FinSi
	hasta que validaranio(ingreso) y anio>0 //verifico que se ingrese un numero y que sea mayor o igual a 0
	bisiesto=Falso
	si (anio%4=0 y no anio%100=0) o anio%400=0
		bisiesto=Verdadero
	FinSi
	si bisiesto=Verdadero
		escribir "El año " anio " es bisiesto"
	SiNo
		escribir "El año " anio " no es bisiesto"
	FinSi
FinAlgoritmo
