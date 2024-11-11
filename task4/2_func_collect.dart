void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 6];
  filterEvenNumbers(numbers).forEach(print);

  List<Student> students = [
    Student("Alex", 19, 8.0),
    Student("Semen", 20, 8.5),
    Student("Leonid", 19, 8.2),
    Student("Egor", 19, 8.7),
  ];
  sortStudentsByGPA(students).forEach(print);
}

List<int> filterEvenNumbers(List<int> numbers) =>
    numbers.where((num) => num.isEven).toList();

class Student {
  String name;
  int age;
  double gpa;

  Student(this.name, this.age, this.gpa);

  @override
  String toString() {
    // TODO: implement toString
    return "${this.name}, ${this.age} y.o., GPA is ${this.gpa}.";
  }
}

List<Student> sortStudentsByGPA(List<Student> students) {
  students.sort((st1, st2) => st2.gpa.compareTo(st1.gpa));
  return students;
}
