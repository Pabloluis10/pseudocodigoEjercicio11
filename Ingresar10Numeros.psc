Algoritmo Ingresar10Numeros
	
	NumMasGrande = 0;
	CantidadNumImpares = 0;
	PromedioNumPares = 0;
	CantidadPares = 0;
	CantidadNum2daDocena = 0;
	Contador = 0;
	
	Escribir "Ingrese 10 n�mero que esten entre (0, 36)"
	Escribir "Se hallara"
	Escribir "a. Cantidad n�mero impares"
	Escribir "b. promedio de los n�mero pares"
	Escribir "c. Cantidad de n�meros que se encuentre en la 2da docena ( 13 al 24)"
	Escribir "d. El n�mero m�s grande"
	
	Repetir
		Escribir "Ingrese n�mero";
		Leer  Num;
		
		Si Num >= 0 & Num <= 36 Entonces
			Contador = Contador+1;
			ParoImpar = Num%2;
			Si ParoImpar == 0 & Num <> 0 Entonces
				CantidadPares = CantidadPares +1;
				PromedioNumPares = PromedioNumPares+Num;
			Fin Si
			Si ParoImpar <> 0 & Num<>0 Entonces
				CantidadNumImpares=CantidadNumImpares+1;
			Fin Si
			Si Num>12 & Num<25 Entonces
				CantidadNum2daDocena= CantidadNum2daDocena+1;
			Fin Si
			Si Num>NumMasGrande Entonces
				NumMasGrande=Num;
			Fin Si
		SiNo
			Escribir "Usted no ingreso un n�mero dentro del rango, vuelva a ingresar un n�mero valido";
		Fin Si
	Hasta Que Contador == 10
	
	PromedioNumPares = PromedioNumPares/CantidadPares;
	
	Escribir "La cantidad de n�mero impares ingresados es: ",CantidadNumImpares;
	Escribir "El promedio de los n�meros pares es: ",PromedioNumPares;
	Escribir "La cantidad de n�mero ingresados que se encuentr�n en la segunda docena son: ",CantidadNum2daDocena;
	Escribir "El n�mero m�s grande que ingreso es: ", NumMasGrande
	
FinAlgoritmo
