// 「引数無し」「デフォルトコンストラクタ定義あり」
class Person {
  Person() {
    print('Personクラスのインスタンスが生成されました');
  }
}

// 「引数あり」「デフォルトコンストラクタ定義無し」
class Person2 {
  String? name;

  Person2(this.name);
}

// 「引数あり」「デフォルトコンストラクタ定義あり」
class Person3 {
  String? name;

  Person3(this.name) {
    print('私は${name}です');
  }
}

// 「引数あり」「名前付きコンストラクタ定義あり」
class Person4 {
  String? name;
  String? nationality;
  String? gender;

  // 名前付き引数を持った関数
  // 呼び出し方
  // Person4 person4 = Person4(name: 'a', nationality: 'b', gender: 'c');
  Person4({this.name, this.nationality, this.gender}) {
    print('Personクラスのインスタンスが生成されました');
  }

  // 名前付き引数でない関数
  // 呼び出し方
  // Person4 person4 = Person4('a', 'b', 'c');
  Person4.all_required(this.name, this.nationality, this.gender) {
    print('Personクラスのインスタンスが生成されました');
  }

  // Person4.nationality('しろう1', '日本人');
  Person4.nationality(this.name, this.nationality) {
    print('$nameは$nationalityです');
  }

  // Person4.gender('しろう2', '女性');
  Person4.gender(this.name, this.gender) {
    print('$nameは$genderです');
  }
}

void main() {
  Person person = Person();
  print(person);

  print('---');

  Person2 person2 = Person2('たろう');
  print(person2.name);
  print(person2);

  print('---');
  Person3 person3 = Person3('じろう');
  print(person3.name);
  print(person3);

  print('---');
  Person4 person4 = Person4.all_required('a', 'b', 'c');
  print(person4.name);
  print(person4.nationality);
  print(person4.gender);
  Person4.nationality('しろう1', '日本人');
  Person4.gender('しろう2', '女性');
}
