import 'dart:math' as math;

void main() {
  int x = 10;
  int? y = getNullable();

  // non-nullableにnullableを入れるのはエラー
  // x = y;
  // nullableにnon-nullableを入れるのはOK
  // y = x;

  // nullチェック後はOK
  if (y != null) {
    x = y;
  }
  print(x);
  print(y);
}

int? getNullable() {
  var rand = new math.Random();
  if (rand.nextInt(2) == 0) {
    return null;
  }
  return 1;
}
