// 親クラス
class Person {
  Person() {
    print('Personクラスのインスタンスが生成されました');
  }
}

// 子クラス
class Yamada extends Person {
  Yamada() : super() {
    print('Yamadaクラスのインスタンスが生成されました');
  }

  // 親クラスが「引数無し」かつ「デフォルトコンストラクタ」なら、super()は省略可能。以下の記載でもOK
  // Yamada() {
  //   print('Yamadaクラスのインスタンスが生成されました');
  // }
}

void main() {
  Person person = Person();
  // =>
  // Personクラスのインスタンスが生成されました
  print(person);

  print('----');

  Yamada yamada = Yamada();
  // =>
  // Personクラスのインスタンスが生成されました
  // Yamadaクラスのインスタンスが生成されました
  print(yamada);
}
