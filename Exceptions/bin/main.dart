import 'ColorError.dart';

void catchError(){
  print('Starting....');

  try{
    print('trying...');
    test a;
    print('test: $test');
  }
  catch(e){
    print("Error: -Dont Care da!");
  }
  finally{
    print('done');
  }
}

void raiseError(int a, int b){
  try{
    if(a != b) throw 'not the same!!!!';
  }
  catch(e){
    print("Something went wrong : " + e.toString());
  }
  finally{
    print("Complete");
  }
}

void internal(){
  throw 'nope';
}

void outter(){
  try{
    internal();
  }
  catch(e){
    print('program failed !!! ');
  }
}

enum Color{
  black, white, brown
}

void cats(Color color){
  try{
    if(color != Color.black) throw new ColorError('Must be black ! ');
    print("pet the cat !!");

    cat a;

    print("cat: $cat");

  }

  on ColorError catch(e){
    print("You selected wrong color.");
  }

  catch(e){
    print("Unknown Error : " + e.toString());
  }
  finally{
    print("Done ! ");
  }
}

main(List<String> arguments) {
  catchError();
  raiseError(2, 3);
  outter();
  cats(Color.brown);
}
