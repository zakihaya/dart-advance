import 'dart:async';

void main() async {
  print("start");

  // data2がエラーになった後でdata3も実行される
  // catchErrorがdata2を対象としたエラーハンドリングを行い、data3を呼び出しているため
  print(DateTime.now().toString());
  asyncFunc("data1", 3).then((result) {
    print(result);
    return asyncFunc("data2", 2);
  }).then((result) {
    print(result);
    return asyncFunc("data3", 1);
  }).catchError((result) {
    print("error when data2");
    print(result);
    return asyncFunc("data3", 1);
  }).then((result) {
    print(result);
  });

  // data2がエラーになった後でdata3は実行されない
  // catchErrorがasyncチェーン全体のエラーハンドリングとなっているため、data2にエラーになった後にdata3は実行されない
  print(DateTime.now().toString());
  asyncFunc("data1", 3).then((result) {
    print(result);
    return asyncFunc("data2", 2);
  }).then((result) {
    print(result);
    return asyncFunc("data3", 1);
  }).then((result) {
    print(result);
  }).catchError((result) {
    print("error");
    print(result);
  });

  print("end");
}

Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    print("${name} delay begin");
    if (name == "data2") {
      int? zero = null;
      int result = 1 + zero!;
      return "ifcase:${result.toString()}";
    }
    print("${name} delay done");
    return "${name}:${DateTime.now().toString()}";
  });
}
