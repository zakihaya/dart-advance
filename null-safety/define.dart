void main() {
  // 型宣言に?をつけるとnullを許容する
  String? nullableString; // 暗黙的なnull
  int? nullableInt = null; // 明示的なnull

  print(nullableString);
  print (nullableInt);

  // 通常の型宣言ではnullが認められない。Non-Nullable型（Null非許容型）
  // 宣言時もしくは、利用される前に確実な値の設定が必要
  String nonNullableString = "hoge";
  int nonNullableInt;
  // 初期化しないとnonNullableInt使用時にエラーになる
  nonNullableInt = 1;

  print(nonNullableString);
  print(nonNullableInt);

  // Non-Nullable型にnullを代入するとエラーになる
  // nonNullableString = null;
}
