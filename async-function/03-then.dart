import 'dart:async';

void main() async {
  print("start");

  print(DateTime.now().toString());
  print("data1 start");
  asyncFunc("data1", 5).then((result) {
    print(result);
  });

  print(DateTime.now().toString());
  print("data2 start");
  asyncFunc("data2", 3).then((result) {
    print(result);
  });

  print(DateTime.now().toString());
  print("data3 start");
  asyncFunc("data3", 1).then((result) {
    print(result);
  });

  print("end");
}

Future<String> asyncFunc(String name, int time) async {
  return Future.delayed(Duration(seconds: time), () {
    print("${name} delay done");
    return "${name}:${DateTime.now().toString()}";
  });
}
