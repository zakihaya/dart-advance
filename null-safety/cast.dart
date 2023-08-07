import 'dart:math' as math;

void main() {
  int x = 20;
  int? y = getNullable();

  // non-nullableにキャストして代入する
  // yにnullが入った状態で行うと例外が発生する
  // x = y ?? 0; のようにするほうが安全
  try {
    x = y!;
  } catch (e) {
    // Null check operator used on a null value
    print(e);
  }
  print("x: $x" + " y: $y");
}

int? getNullable() {
  var rand = new math.Random();
  if (rand.nextInt(2) == 0) {
    return null;
  }
  return 1;
}
