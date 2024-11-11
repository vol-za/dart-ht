import 'dart:io';
import 'dart:convert';

void main() {
  print("Please type two numbers(via enter) to create expressions:");

  int a = getNumberFromStdin();
  int b = getNumberFromStdin();

  print("$a + $b = ${a + b}");
  print("$a - $b = ${a - b}");
  print("$a * $b = ${a * b}");
  print("$a / $b = ${a / b}");
  print("Max value: ${[a, b].reduce((value, element) => value > element ? value : element)}");
}

int getNumberFromStdin() {
  String? line = stdin.readLineSync(encoding: utf8);
  if (line != null && int.tryParse(line) != null) {
    return int.parse(line);
  } else {
    throw ("Invalid value: $line");
  }
}
