// 親クラス
class Person {
  Person() {
    print('Personクラスのインスタンスが生成されました');
  }
}

// 親クラス2
class Person2 {
  String? name;

  Person2(this.name) {
    print('私は${name}です');
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

// 子クラス2
class Yamada2 extends Person2 {
  Yamada2() : super('山田') {
    print('Yamada2クラスのインスタンスが生成されました');
    // 継承したクラスの親クラスの変数が使える
    print('親クラスのnameの値は「{$name}」です');
  }
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

  print('----');
  Yamada2 yamada2 = Yamada2();
  print(yamada2);
}
