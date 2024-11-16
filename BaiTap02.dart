import 'dart:io';
import 'dart:math';

void main() {
  int a = inputInteger('Nhập hệ số a (khác 0): ');
  int b = inputInteger('Nhập hệ số b: ');
  int c = inputInteger('Nhập hệ số c: ');

  solveQuadraticEquation(a, b, c);
}

int inputInteger(String prompt) {
  while (true) {
    stdout.write(prompt);
    try {
      int value = int.parse(stdin.readLineSync()!);
      if (prompt.contains('a') && value == 0) {
        print('Hệ số a phải khác 0.');
        continue;
      }
      return value;
    } catch (e) {
      print('Vui lòng nhập một số nguyên hợp lệ.');
    }
  }
}

void solveQuadraticEquation(int a, int b, int c) {
  print('Phương trình: ${a}x^2 + ${b}x + ${c} = 0');
  int delta = b * b - 4 * a * c;

  if (delta < 0) {
    print('Phương trình vô nghiệm.');
  } else if (delta == 0) {
    double x = -b / (2 * a);
    print('Phương trình có nghiệm kép: x = $x');
  } else {
    double sqrtDelta = sqrt(delta);
    double x1 = (-b + sqrtDelta) / (2 * a);
    double x2 = (-b - sqrtDelta) / (2 * a);
    print('Phương trình có 2 nghiệm phân biệt:');
    print('x1 = $x1');
    print('x2 = $x2');
  }
}