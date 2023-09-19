// 親クラス
class Person {
  Person() {
    print('Personクラスのインスタンスが生成されました');
  }

  void speakLanguages() {
    print('私は日本語を喋ります');
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

// 子クラス3
class Yamada3 extends Person2 {
  // 子クラスのお引数の値を親クラス継承時に渡せます
  Yamada3(name) : super(name) {
    print('Yamada3クラスのインスタンスが生成されました');
    print('親クラスのnameの値は「{$name}」です');
  }

  // 下も同じ意味
  // 子クラスの引数の値を親クラス継承時に渡す場合は、記載省略可能
  // Yamada3(super.name){
  //   print('Yamadaクラスのインスタンスが生成されました');
  //   print('親クラスのnameの値は「{$name}」です');
  // }
}

// 子クラス4
class Yamada4 extends Person {
  Yamada4() : super() {
    print('Yamada4クラスのインスタンスが生成されました');
    super.speakLanguages();
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
  // =>
  // 私は山田です
  // Yamada2クラスのインスタンスが生成されました
  // 親クラスのnameの値は「{山田}」です
  print(yamada2);

  print('----');
  Yamada3 yamada3 = Yamada3('山田');
  // =>
  // 私は山田です
  // Yamada3クラスのインスタンスが生成されました
  // 親クラスのnameの値は「{山田}」です
  print(yamada3);

  print('----');
  Yamada4 yamada4 = Yamada4();
  // =>
  // Personクラスのインスタンスが生成されました
  // Yamada4クラスのインスタンスが生成されました
  // 私は日本語を喋ります
  print(yamada4);
}
