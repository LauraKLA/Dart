import 'dart:io';
import 'dart:math';

class Ejercicio1 {
  void run() {
    double num = 0;
    double resultado = 0;

    while (true) {
      print('Ingresa un número: ');
      String? input = stdin.readLineSync();

      if (input != null && double.tryParse(input) != null) {
        num = double.parse(input);
        if (num > 0) {
          resultado = num * num;
          print('El cuadrado de $num es: $resultado');
          break;
        } else {
          print('¡ERROR! El número ingresado debe ser positivo.');
        }
      }
    }
  }
}

class Ejercicio2 {
  void run() {
    int resultado;

    print("Ingrese el primer número:");
    int num1 = int.parse(stdin.readLineSync()!);

    print("Ingrese el segundo número:");
    int num2 = int.parse(stdin.readLineSync()!);

    if (num1 > num2) {
      resultado = num1 * 2;
    } else {
      resultado = num2 * 3;
    }

    print("El resultado es: $resultado");
  }
}

class Ejercicio3 {
  void run() {
    while (true) {
      try {
        stdout.write("Ingresa un número: ");
        String? input = stdin.readLineSync();
        if (input != null) {
          double? num = double.tryParse(input);
          if (num != null) {
            if (num >= 0) {
              double raizCuadrada = sqrt(
                  num); // Cambien Math.Sqrt por sqrt porque en Dart cambia el nombre
              print("La raíz cuadrada de $num es: $raizCuadrada");
            } else {
              double cuadrado = pow(num, 2)
                  .toDouble(); // Utilice metodo to.Double para convertir el valor de pow en double
              print("El cuadrado de $num es: $cuadrado");
            }
            break;
          } else {
            print(
                "¡ERROR! este campo es numérico, por favor ingrese un dato válido.");
          }
        }
      } catch (e) {} // Cambie Exception po e
    }
  }
}

class Ejercicio4 {
  void run() {
    double perimetro;
    bool num;
    double radio = 0; // Asignar valor a la variable
    do {
      print("Indique el radio del círculo: ");
      String? input = stdin.readLineSync();

      num = double.tryParse(input!) != null;

      if (!num || double.parse(input) <= 0) {
        // Leer el dato ingresado
        print("¡ERROR! Introduzca un valor válido. ");
        num = false;
      } else {
        radio = double.parse(input); // Asignar valor a radio
      }
    } while (!num);

    perimetro = 2 * pi * radio;

    print("Para un círculo con radio $radio el perímetro es: $perimetro");
  }
}

class Ejercicio5 {
  void run() {
    int num;
    String? diaSemana;

    do {
      print(
          "Ingrese un número del 1 al 7 para identificar el día de la semana:");
      num = int.parse(stdin.readLineSync()!);

      switch (num) {
        case 1:
          diaSemana = "Lunes";
          break;
        case 2:
          diaSemana = "Martes";
          break;
        case 3:
          diaSemana = "Miércoles";
          break;
        case 4:
          diaSemana = "Jueves";
          break;
        case 5:
          diaSemana = "Viernes";
          break;
        default:
          diaSemana = "No laboral";
          break;
      }

      if (num >= 1 && num <= 7) {
        print("El día correspondiente al número ingresado es: $diaSemana");
      }
    } while (num < 1 || num > 7);
  }
}

class Ejercicio6 {
  void run() {
    double salarioAnual = 0;
    bool esValido = false;

    while (!esValido) {
      print("Ingrese su salario anual: ");
      String? input = stdin.readLineSync();

      if (double.tryParse(input!) != null) {
        salarioAnual = double.parse(input);

        if (salarioAnual >= 0) {
          esValido = true;
        }
      } else {
        print("¡ERROR! el valor ingresado debe ser numérico.");
      }
    }

    if (salarioAnual > 12000) {
      double excedente = salarioAnual - 12000;
      double impuesto = excedente * 0.15;
      print(
          "El impuesto a pagar es: \$ $impuesto"); // Agreso el \ para que el sistema me imprima el simbolo y no lo interprete como una interpolacion de cadenas
    } else {
      print("No debe que pagar impuestos.");
    }
  }
}

class Ejercicio7 {
  void run() {
    double num1 = 0;
    double num2 = 0;

    print("Ingrese el primer número:");
    String? input = stdin.readLineSync();
    while (double.tryParse(input!) == null) {
      print(
          "¡ERROR! Este campo solo permite caracteres numéricos. Intente nuevamente:");
      input = stdin.readLineSync();
    }
    num1 = double.parse(input);

    print("Ingrese el segundo número:");
    input = stdin.readLineSync();
    while (double.tryParse(input!) == null) {
      print(
          "¡ERROR! Este campo solo permite caracteres numéricos. Intente nuevamente:");
      input = stdin.readLineSync();
    }
    num2 = double.parse(input);

    if (num2 != 0) {
      double residuo = num1 % num2;
      print("El residuo de la división de $num1 entre $num2 es: $residuo");
    } else {
      print("¡ERROR!: No es posible dividir entre cero.");
    }
  }
}

class Ejercicio8 {
  void run() {
    int suma = 0;

    for (int i = 1; i <= 50; i++) {
      if (i % 2 == 0) {
        suma += i;
      }
    }

    print("La suma de los números pares entre 1 y 50 es: $suma");
  }
}

class Ejercicio9 {
  void run() {
    int numerador1, denominador1, numerador2, denominador2;

    while (true) {
      print("Ingrese el numerador de la primera fracción: ");
      String? input = stdin.readLineSync();
      if (input != null &&
          int.tryParse(input) != null &&
          int.parse(input) != 0) {
        numerador1 = int.parse(input);
        break;
      } else {
        print("¡ERROR! el valor ingresado en este campo debe ser numérico.");
      }
    }

    while (true) {
      print("Ingrese el denominador de la primera fracción: ");
      String? input = stdin.readLineSync();
      if (input != null &&
          int.tryParse(input) != null &&
          int.parse(input) != 0) {
        denominador1 = int.parse(input);
        break;
      } else {
        print(
            "¡ERROR! el valor ingresado en este campo debe ser numérico y diferente de 0.");
      }
    }

    while (true) {
      print("Ingrese el numerador de la segunda fracción: ");
      String? input = stdin.readLineSync();
      if (input != null &&
          int.tryParse(input) != null &&
          int.parse(input) != 0) {
        numerador2 = int.parse(input);
        break;
      } else {
        print(
            "¡ERROR! el valor ingresado en este campo debe ser numérico y diferente de 0.");
      }
    }

    while (true) {
      print("Ingrese el denominador de la segunda fracción: ");
      String? input = stdin.readLineSync();
      if (input != null &&
          int.tryParse(input) != null &&
          int.parse(input) != 0) {
        denominador2 = int.parse(input);
        break;
      } else {
        print(
            "¡ERROR! el valor ingresado en este campo debe ser numérico y diferente de 0.");
      }
    }

    double diferencia =
        (numerador1 * denominador2 - numerador2 * denominador1) /
            (denominador1 * denominador2);

    print(
        "La diferencia entre las fracciones $numerador1/$denominador1 y $numerador2/$denominador2 es: $diferencia");
  }
}

class Ejercicio10 {
  void run() {
    String? palabra;
    int? longitud;

    do {
      print("Ingresa una palabra: ");
      palabra = stdin.readLineSync();

      if (int.tryParse(palabra!) != null) {
        print("Este campo no es númerico, por favor ingresa una palabra.");
        continue;
      } else {
        longitud = palabra.length;
        print("La longitud de la palabra '$palabra' es: $longitud");
        break;
      }
    } while (true);
  }
}

class Ejercicio11 {
  void run() {
    double suma = 0;
    int count = 0;

    print("Ingrese cuatro números para calcular su promedio:");

    while (count < 4) {
      print("Número ${count + 1}: ");
      String? input = stdin.readLineSync()!;

      double? number = double.tryParse(input);
      if (number != null) {
        suma += number;
        count++;
      } else {
        print(
            "¡ERROR! los datos ingresados en este campo deben ser numéricos.");
      }
    }

    double average = suma / 4;
    print(
        "la suma de los números ingresados es: $suma y el promedio es: $average");
  }
}

class Ejercicio12 {
  void run() {
    int contador = 0;
    int minimo =
        9223372036854775807; // Reemplace int.maxValue con 9223372036854775807 que corresponde al el valor más grande posible para un entero en Dart, asumiendo que estás utilizando un sistema de 64 bits

    print("Ingresa cinco números:");

    while (contador < 5) {
      print("Número ${contador + 1}: ");
      String? input = stdin.readLineSync();
      int numero;

      if (input != null && int.tryParse(input) != null) {
        numero = int.parse(input);
        if (numero < minimo) {
          minimo = numero;
        }
        contador++;
      } else {
        print("¡ERROR! Este campo debe ser numérico. Intenta nuevamente!");
      }
    }

    print("El número más pequeño es: $minimo");
  }
}

class Ejercicio13 {
  void run() {
    String? palabra;

    print("Ingresa una palabra:");

    while (true) {
      palabra = stdin.readLineSync()!;
      if (!contieneNumeros(palabra)) break;
      print("¡ERROR! este campo solo permite texto. Intente nuevamente!");
    }

    int numeroVocales = contarVocales(palabra);

    print("La palabra \"$palabra\" tiene $numeroVocales vocales.");
  }

  static int contarVocales(String palabra) {
    int count = 0;
    for (var c in palabra.toLowerCase().runes) {
      if (("aeiou".contains(String.fromCharCode(c)))) {
        count++;
      }
    }
    return count;
  }

  static bool contieneNumeros(String input) {
    for (var c in input.runes) {
      if (RegExp(r'\d').hasMatch(String.fromCharCode(c))) {
        return true;
      }
    }
    return false;
  }
}

class Ejercicio14 {
  void run() {
    int numero;

    print("Ingrese un número entero positivo para calcular su factorial:");

    while (true) {
      try {
        numero = int.parse(stdin.readLineSync()!);
        if (numero >= 0) {
          break;
        } else {
          print("¡ERROR! Ingrese un número entero positivo:");
        }
      } catch (e) {
        print("¡ERROR! Ingrese un número entero positivo:");
      }
    }
    int factorial = calcularFactorial(numero);

    print("El factorial de $numero es: $factorial");
  }

  static int calcularFactorial(int n) {
    if (n == 0) {
      return 1;
    }

    int factorial = 1;
    while (n > 0) {
      factorial *= n;
      n--;
    }

    return factorial;
  }
}

class Ejercicio15 {
  void run() {
    int numero = 0;
    bool esNumeroValido = false;

    while (!esNumeroValido) {
      print("ingrese un número: ");
      String? input = stdin.readLineSync()!;
      try {
        if (input != (null)) {
          numero = int.parse(input);
          esNumeroValido = true;
        }
      } catch (e) {
        print("¡ERROR! Este campo permite sólo valores numéricos.");
        continue;
      }
    }
    if (numero >= 10 && numero <= 20) {
      print("¡ES CORRECTO! el número $numero está entre 10 y 20. ");
    } else {
      print(
          "¡ERROR! el número $numero no está entre 10 y 20. Intenta de nuevo!");
      esNumeroValido = false;
    }
  }
}
