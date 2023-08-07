void main() {
  List<int?> list = [1, null];
  list.shuffle();
  int? nullableValue = list.first;

  print(nullableValue);
  print(nullableValue ?? 0);
}
