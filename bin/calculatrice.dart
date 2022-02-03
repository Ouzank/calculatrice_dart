// ignore_for_file: prefer_typing_uninitialized_variables

class Calculatrice {
  var num1;
  var num2;
  var result;

  var oper;

  Calculatrice(var a, var b, var c, String opera) {
    num1 = a;
    num2 = b;
    result = c;
    oper = opera;
  }

  get getNum1 => num1;

  set setNum1(num1) => this.num1 = num1;

  get getNum2 => num2;

  set setNum2(num2) => this.num2 = num2;

  get getResult => result;

  set setResult(result) => this.result = result;

  get getOper => oper;

  set setOper(oper) => this.oper = oper;

  String calculate(String num1, String num2, String oper) {
    int r = 0;
    switch (oper) {
      case "+":
        r = int.parse(num1) + int.parse(num2);
        break;
      case "-":
        r = int.parse(num1) - int.parse(num2);

        break;
      case "x":
        r = int.parse(num1) * int.parse(num2);

        break;
      case "/":
        r = (int.parse(num1) / int.parse(num2)) as int;

        break;

      default:
    }
    return 'Le résultat de l\'opération est $r';
  }
}
