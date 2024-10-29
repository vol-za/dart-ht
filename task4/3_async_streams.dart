import 'dart:async';
import 'dart:math';

void main() async {
  fetchData()
  .then((data) => print(data))
  .catchError((_) => print("Error"));

  var controller = StreamController();

  StreamSubscription subscription = controller.stream.listen((event) {
    print(event);
  });

  for (int i = 0; i < 7; i++) {
    await Future.delayed(Duration(seconds: 1));
    controller.add(Random().nextInt(11));
  }

  subscription.cancel();
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));

  return "Data loaded.";
}
