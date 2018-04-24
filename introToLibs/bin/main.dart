//local
import 'package:introToLibs/introToLibs.dart' as introToLibs;

//built-in
import 'dart:convert';

main(List<String> arguments) {
  print('Hello world: ${introToLibs.calculate()}!');

  Map<String, int> map = new Map();
  map.putIfAbsent("Aravi", () => 21);
  map.putIfAbsent("ivara", () => 2);

  String enc = JSON.encode(map);
  print(enc);

  Map<String, int> people = JSON.decode(enc);

  people.forEach((key, value){
    print("$key is $value years old.");
  });

}
