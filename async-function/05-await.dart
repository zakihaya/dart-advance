import 'dart:async';

void main() async {
  print("start");

  print(DateTime.now().toString());
  print(await asyncFunc("data1", 5));

  print(DateTime.now().toString());
  print(await asyncFunc("data2", 3));

  print(DateTime.now().toString());
  print(await asyncFunc("data3", 1));

  print("end");
}

Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    print("${name} delay done");
    return "${name}:${DateTime.now().toString()}";
  });
}
