import 'dart:async';

void main() async {
  print("start");

  print("data1 start");
  print(DateTime.now().toString());
  print(asyncFunc("data1", 5));

  print("data2 start");
  print(DateTime.now().toString());
  print(asyncFunc("data2", 3));

  print("data3 start");
  print(DateTime.now().toString());
  print(asyncFunc("data3", 1));

  print("end");
}

Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    print("${name} delay done");
    return "${name}:${DateTime.now().toString()}";
  });
}
