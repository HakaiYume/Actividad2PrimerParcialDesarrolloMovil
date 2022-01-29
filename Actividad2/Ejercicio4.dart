import "dart:io"; 

void main(){

/* 
    Universidad Tecnologica Metropolitana
    Desarrollo Móvil Multiplataforma
    Docente: Chuc Uc Joel Iván
    Actividad 2: Ejercicio 4 - Palíndromos
    Alumno: Daniel Francisco Puch Ceballos
    Cuatrimestre: 4
    Parcial: 2
    Grupo: A
*/

  String opcion = "s";
  
  while(opcion != "n"){
    String palabra, plb_sn_espacios, plb_inversa = "", caracter;
    int i, contador = 1;
    
    stdout.writeln("\nDame una palabra y te dire si es palindromo o no");
    palabra = stdin.readLineSync().toString();
    
    plb_sn_espacios = palabra.replaceAll(" ", "");
    i = palabra.length;
    
    for (int x = i - 1; x >= 0; x--)
    {
      caracter = String.fromCharCode(palabra.runes.elementAt(x));
      if(caracter == " ")
      {
        contador += 1;
      }else{
        plb_inversa += caracter;
      }
    }

    stdout.writeln("\nLa palabra invertida es: $plb_inversa");
    
    if (plb_sn_espacios == plb_inversa)
    {
      stdout.writeln("¡Es un palindromo!");
      stdout.writeln("Tiene $contador palabras");
    } else {
      stdout.writeln("¡No es un palindromo!");
    }

    stdout.writeln("\n¿Quieres evaluar otra palabra? (s/n)");
    opcion = stdin.readLineSync().toString();
  }
}