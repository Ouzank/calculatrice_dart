// ignore_for_file: unrelated_type_equality_checks

import 'calculatrice.dart';
import 'dart:io';

void main(List<String> arguments) {
  String rep = '0';

  Calculatrice cal = Calculatrice(0, 0, 0, "");

  print('Hello world!');

  do {
    print("Entrez le premier chiffre de l'opération a effectuer : ");
    cal.num1 = stdin.readLineSync();

    print("Entrez le second chiffre de l'opération a effectuer : ");
    cal.num2 = stdin.readLineSync();

    do {
      print("Entrez l'opérateur correcte (+ | / | - | x ) ");
      cal.oper = stdin.readLineSync()!;
    } while (cal.oper != '+' &&
        cal.oper != '/' &&
        cal.oper != 'x' &&
        cal.oper != '-');

    print(cal.calculate(cal.num1, cal.num2, cal.oper));

    print('Voulez-vous continuer ? 1 pour oui et 0 pour non ');
    rep = stdin.readLineSync()!;
  } while (rep == '1');
}
