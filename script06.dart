import 'dart:async';
import 'dart:io';

void main() {
  final StreamController<String> controller = new StreamController<String>();
  controller.stream.listen((message) {
    print("Received message ${message}");
  });

  while (true) {
    stdout.write("Enter a message (or type 'exit' to quit): ");
    String? input = stdin.readLineSync();

    if(input == null || input.toLowerCase() == "exit"){
      print("Goodbye!");
      break;
    }
    controller.add(input);
  }
  controller.close();
}
