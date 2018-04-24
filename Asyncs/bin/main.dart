import 'dart:async';

Future<bool> longWait(String prefix) async{
  for(int i = 0; i< 5; i++){
    print("$prefix    $i");
  }
  return true;
}

Future testAsync() async{
  print('Starting');
  bool ret = await longWait('Async');
  print("Async happened : $ret");
  print('done');
}

void testThen(){
  print("Starting");
  longWait("Then").then((bool value){
    print("Done Waiting : $value");
  });

  print("Done");
}

void testChain(){
  print("Starting");
  Future f = longWait("Chain");
  f.then((bool value){
    print("Chain 1 : $value");
    return false;
  }).then((bool value){
    print("Chain 2 : $value");
    return true;
  }).then((bool value){
    print("Chain 3 : $value");
  });

  print("Done");
}

Future testMultiple() async {
  print("Started");

  Future f1 = longWait("one");
  Future f2 = longWait("two");
  Future f3 = longWait("three");

  await Future.wait([f1,f2,f3]);

  print("Done handling Multiple Async Process.");

}

main(List<String> arguments) {
  testAsync();
  print("Testing then Started");
  testThen();
  print("Testing Chain like Async with Object");
  testChain();
  print("Starting Distinct or multiple Async process");
  testMultiple();
}
