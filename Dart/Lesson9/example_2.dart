import 'dart:async';

void viDuDemSo(){
  Stream<int> stream = Stream.periodic(Duration(seconds: 2), (x) => x+1).take(20);

  stream.listen(
    (x) => print("x = ${x}"),
    onDone: () => print("Done!"),
    onError: (loi) => print("$loi conmemay roi!")
  );
}

void streamController(){
  StreamController<String> controller = StreamController<String>();
  controller.stream.listen(
    (tinNhan) => print("Noi dung tin nhan: ${tinNhan}"),
    onDone: () => print("Doan chat ket thuc!")
  );

  Future.delayed(Duration(seconds: 2), (){
    controller.add("Hello, my name is Ky0ri");
  });

  Future.delayed(Duration(seconds: 4), (){
    controller.add("Nice to meet you!!");
  });
}

void main(){
  // viDuDemSo();
  streamController();
}