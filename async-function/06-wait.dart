import 'dart:async';

void main() async {
  print("start");
  print(DateTime.now().toString());

  Future<String> result1 = asyncFunc("data1", 3);
  Future<String> result2 = asyncFunc("data2", 1);
  Future<String> result3 = asyncFunc("data3", 5);

  List<String> results = await Future.wait([result1, result2, result3]);
  for (String result in results) {
    print(result);
  }

  print("end");
  print(DateTime.now().toString());
}

Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    print("${name} delay done");
    return "${name}:${DateTime.now().toString()}";
  });
}
