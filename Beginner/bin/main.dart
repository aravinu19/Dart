
main(List<String> arguments) {

  print('hello world');

  var something = 'hello world';

  print(something);

  const nope = 1;
  print(nope);

  num age = 21;
  age += 21;

  bool isworking = true;
  int cats = 1;
  double catss = 3.14;

  print('Age is $age');

  String names = "Hello, world, welcome, to, Dart";

  List<String> list  = names.split(',');
  print(list);
  print(list.elementAt(2));
  list.add("Lang");
  print(list);
  list.insert(1, "Cruel");
  print(list);

  print(list.indexOf("Cruel", 0));

  list.forEach((v){
    print(v);
  });

  Map<String, int> ages = {
    'Prey' : 44,
    'Deadman' : 23,
    'ProNoob' : 19
  };

  print(ages.keys);
  print(ages.values);

  print(ages['Deadman']);

  ages['Reaper'] = 50;
  print(ages["Reaper"]);

  ages.forEach((k,v){
    print('$k is $v level in DOTA 2');
  });

}
