import java.util.*;

public class Ejercicio11{

	public static void main(String[] args){

		Scanner entrada = new Scanner(System.in);
		
		int cantidadImpares=0;
		int promPares=0;
		int cantPares=0;
		int cantidad2Docena=0;
		int numMayor=0;

		System.out.println("Se le piden que ingrese 10 número estos número deben de estar");
		System.out.println("entre 0 y 36 ");

		for(int i=0; i<10; i++){
			int num;
			do{
				System.out.print((i+1)+". Ingrese un número: ");
				num = entrada.nextInt();
			}while(num<0 || num >36);
			
			if(num > 0 && (num%2)==0){
				promPares += num;
				cantPares++;
			} else if((num%2) != 0) {
				cantidadImpares++;
			}

			if(num>11 & num<25){
				cantidad2Docena++;
			}

			if(num > numMayor){
				numMayor = num;
			}
		}

		promPares /= cantPares;

		System.out.println("La cantidad de números impares es: "+cantidadImpares);
		System.out.println("El promedio de los número pares es: "+promPares);
		System.out.println("La cantidad de números que se encuentran en la 2° docena es: "+cantidad2Docena);
		System.out.println("El número más grande que ingreso es: "+numMayor);
	}
}