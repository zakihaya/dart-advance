void main() {
  String? nullableValue;
  int? answer;
  int? answer2;

  List<String?> list = ["hoge", null];

  // nullableValueがnullでない場合
  list.shuffle();
  nullableValue = list.first;
  answer = nullableValue?.length;
  print(nullableValue);
  print(answer);

  // ?.を使わない場合
  if (nullableValue != null) {
    answer2 = nullableValue.length;
  } else {
    answer2 = null;
  }
  print(answer2);
}
