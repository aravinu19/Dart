import 'package:introCls/introCls.dart' as introCls;
import 't1.dart';
import 'house.dart';

main(List<String> arguments) {
  print('Hello world: ${introCls.calculate()}!');
  t1 t = new t1();

  print(t.cats);
  print(t.dog);
  t.getPut = 10;
  print(t.getBack);

  house h = new house(5, 9);

}
