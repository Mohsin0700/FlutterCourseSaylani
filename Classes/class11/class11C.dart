import 'dart:io';

void main() {
  // Switch Case....

  int num1 = 78;
  int num2 = 22;

  String sign = stdin.readLineSync()!;
  switch (sign) {
    case '+':
      print(num1 + num2);
      break;
    case '-':
      print(num1 - num2);
    default:
      print('Unsupported Operator');
  }
}
