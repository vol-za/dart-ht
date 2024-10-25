void main() {
  List<int?> values = [0, 6, 7, null, 32, null, 0, -3];
  values.forEach(print);

  for (int i = 0; i < values.length; i++) {
    if(values[i] == null) {
      values[i] = 0;
    }
  }
  values.forEach(print);
}
