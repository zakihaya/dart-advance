import 'dart:async';

void main() async {
  print("start");
  print(DateTime.now().toString());

  print("data1 start");
  // 5秒待つ
  await new Future.delayed(new Duration(seconds: 5), () {
    print("data1");
  });
  print(DateTime.now().toString());

  print("data2 start");
  // 3秒待つ
  await new Future.delayed(new Duration(seconds: 3), () {
    print("data2");
  });
  print(DateTime.now().toString());

  print("data1 start");
  // 1秒待つ
  await new Future.delayed(new Duration(seconds: 1), () {
    print("data3");
  });
  print(DateTime.now().toString());

  print("end");
}
