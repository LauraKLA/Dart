import 'dart:io';
import 'Ejercicios_resueltos/index.dart';
import 'menu/index.dart';

void main() {
  print("Por favor ingrese su nombre: ");
  String? nombre = stdin.readLineSync();
  print(
      "¡Hola, $nombre! Por favor, elige del siguiente menú la opción que corresponda a ejercicio que deseas visualizar.");
  var menu = new Menu();
  menu.MostrarMenu();

  while (true) {
    String? entrada = stdin.readLineSync()?.toLowerCase();
    if (entrada == "s" || entrada == "salir") {
      break;
    }

    int? eleccion = int.tryParse(entrada!);
    if (eleccion != null && eleccion >= 1 && eleccion <= 15) {
      switch (eleccion) {
        case 1:
          var ejercicio1 = Ejercicio1();

          do {
            ejercicio1.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 2:
          var ejercicio2 = Ejercicio2();

          do {
            ejercicio2.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 3:
          var ejercicio3 = Ejercicio3();

          do {
            ejercicio3.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 4:
          var ejercicio4 = Ejercicio4();

          do {
            ejercicio4.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 5:
          var ejercicio5 = Ejercicio5();

          do {
            ejercicio5.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 6:
          var ejercicio6 = Ejercicio6();

          do {
            ejercicio6.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 7:
          var ejercicio7 = Ejercicio7();

          do {
            ejercicio7.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 8:
          var ejercicio8 = Ejercicio8();

          do {
            ejercicio8.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 9:
          var ejercicio9 = Ejercicio9();

          do {
            ejercicio9.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 10:
          var ejercicio10 = Ejercicio10();

          do {
            ejercicio10.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 11:
          var ejercicio11 = Ejercicio11();

          do {
            ejercicio11.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 12:
          var ejercicio12 = Ejercicio12();

          do {
            ejercicio12.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 13:
          var ejercicio13 = Ejercicio13();

          do {
            ejercicio13.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        case 14:
          var ejercicio14 = Ejercicio14();

          do {
            ejercicio14.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

          case 15:
          var ejercicio15 = Ejercicio15();

          do {
            ejercicio15.run();
            print("Presiona (S) para continuar o (N) para regresar al menú");
            String? continuar = stdin.readLineSync()?.toLowerCase();
            if (continuar != "s" && continuar != "n") {
              print(
                  "$nombre... La entrada ($continuar) no es válida, ¡Regresa pronto!");
              return;
            } else if (continuar == "n") {
              break;
            }
          } while (true);
          menu.MostrarMenu();
          break;

        default:
          stdin.readLineSync();
          print("Presione una tecla para continuar...");
          break;
      }
    } else {
      print(
          "Opcion inválida. Por favor, ingrese un número entre 1 y 15, o (S) o (SALIR) para finalizar la busqueda. ");
    }
  }
}
