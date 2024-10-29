import '1_math_operations.dart' show getNumberFromStdin;

void main() {
  print("Please type a number to start working:");
  printNumberSign(getNumberFromStdin());
  printCycle();

  print("Please type a number from 1 to 7 to define a day of the week:");
  printDayOfTheWeekByNumber(getNumberFromStdin());
}

void printNumberSign(int value) {
  if (value > 0) {
    print("$value is positive.");
  } else if (value < 0) {
    print("$value is negative.");
  } else {
    print("Zero is neither positive nor negative.");
  }
}

void printCycle() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void printDayOfTheWeekByNumber(int number) {
  String result = "";
  switch (number) {
    case 1:
      result = "Monday";
      break;
    case 2:
      result = "Tuesday";
      break;
    case 3:
      result = "Wednesday";
      break;
    case 4:
      result = "Thursday";
      break;
    case 5:
      result = "Friday";
      break;
    case 6:
      result = "Saturday";
      break;
    case 7:
      result = "Sunday";
      break;

    default:
      result = "invalid number";
      break;
  }

  print("$number is $result.");
}
