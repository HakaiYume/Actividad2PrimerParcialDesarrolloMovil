import "dart:io"; 

void main() {

/* 
    Universidad Tecnologica Metropolitana
    Desarrollo Móvil Multiplataforma
    Docente: Chuc Uc Joel Iván
    Actividad 2: Ejercicio 1 - Calcular salario semanal
    Alumno: Daniel Francisco Puch Ceballos
    Cuatrimestre: 4
    Parcial: 2
    Grupo: A
*/

  String opcion = "s";
  
  while(opcion != "n"){
    int salario = 0, acta = 0;
    final int salario_max = 120 * 40;
    
    stdout.writeln("\n¿El empleado tiene un acta administrativa? (s/n)");
    String opci = stdin.readLineSync().toString();

    stdout.writeln("\n¿Cuantas Horas trabajo el empleado?");
    int horasTrabajo = int.parse(stdin.readLineSync().toString());
    
    if(opci == "s"){
      acta = 1;
    }

    if (horasTrabajo < 40){
      salario = (horasTrabajo * 120);
    } else if(horasTrabajo >= 40){
      salario = (salario_max + ((horasTrabajo - 40) * 175));
    }

    stdout.writeln("\nEl salario correspondiente a este empleado es: $salario");
    
    if(horasTrabajo < 27){
      acta += 1;
      
      if (acta < 2){
      stdout.writeln("Devido a que las horas de trabajo son insuficientes se le levantara un acta administrativa al empleado");
      
      } if (acta == 2){
        stdout.writeln("Este empleado tiene $acta actas administrativas");
        stdout.writeln("¡Esta despedido!");
      }
    }

    stdout.writeln("\n¿Quieres calcular el salario de otro empleado? (s/n)");
    opcion = stdin.readLineSync().toString();
  }
}

