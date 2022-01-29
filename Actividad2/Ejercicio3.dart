import "dart:io";
import 'dart:math'; 

void main(){

/* 
    Universidad Tecnologica Metropolitana
    Desarrollo Móvil Multiplataforma
    Docente: Chuc Uc Joel Iván
    Actividad 2: Ejercicio 3 – Calcular IMC
    Alumno: Daniel Francisco Puch Ceballos
    Cuatrimestre: 4
    Parcial: 2
    Grupo: A
*/

  String opcion = "s";
  
  while(opcion != "n"){
    stdout.writeln("\nNesesito tus datos para calcular tu IMC");
    stdout.writeln("¿Cual es tu peso? (kg)");
    double peso = double.parse(stdin.readLineSync().toString());
    
    stdout.writeln("\n¿Cual es tu altura? (cm)");
    double altura = double.parse(stdin.readLineSync().toString()) / 100;
    double masa_corporal;
    
    masa_corporal = (peso / pow(altura, 2));
    stdout.writeln("\nSegun tu peso ($peso kg) y tu altura ($altura m), tu IMC es: $masa_corporal");

    stdout.write("Segun tu IMC, ");

    if (masa_corporal < 18.5){
      stdout.writeln("tu peso es inferior al normal.");

    } else if (masa_corporal >= 18.5 && masa_corporal < 24.9){
      stdout.writeln("tu peso es normal.");

    }else if (masa_corporal >= 24.9 && masa_corporal < 29.9){
      stdout.writeln("tu peso es superior al normal.");

    } else if (masa_corporal > 30){
      stdout.writeln("usted tiene obesidad.");
    }
  
    stdout.writeln("\n¿Quieres calcular otro IMC? (s/n)");
    opcion = stdin.readLineSync().toString();
  }
}