import 'counter.dart';

main(List<String> arguments) {
  counter.printCount();
  counter.increase();
  counter.increase();
  counter.printCount();

  counter obj = new counter();
  obj.addTen();
  print(obj.count);
  obj.count = 5;
  print(obj.count);
  obj = null;

  print("Object set to null");

  counter.printCount();

  counter obj2 = new counter();
  obj2.addTen();
  print(obj2.count);
  obj2.count = 5;
  print(obj2.count);
  obj2 = null;

  counter.printCount();

}
