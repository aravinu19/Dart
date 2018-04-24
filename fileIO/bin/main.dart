import 'dart:convert';
import 'dart:io';

void list(String path){
  try{
    Directory root = new Directory(path);
    if(root.existsSync()){
      for(FileSystemEntity f in root.listSync()){
        print(f.path);
      }
    }
  }
  catch(e){
    print(e.toString());
  }
}

bool writeFile(String file , String data, FileMode mode){
  try{
    File f = new File(file);
    RandomAccessFile rf = f.openSync(mode: mode);
    rf.writeStringSync(data);
    rf.flushSync();
    rf.closeSync();
    return true;
  }
  catch(e){
    print(e.toString());
    return false;
  }
}

String readFile(String file){
  try{
    File f = new File(file);
    return f.readAsStringSync();
  }
  catch(e) {
    print(e.toString());
    return "File not Found";
  }
}

List<String> readLines(String file){
  try{
    File f = new File(file);
    return f.readAsLinesSync();
  }
  catch(e){
    print(e.toString());
  }
}

void readJSON(String file){
  String data = readFile(file);
  if(data.isEmpty){
    print("No data in File");
    return;
  }
  
  Map<String, int> people = JSON.decode(data);
  print('People Object: ');
  people.forEach((key, value){
    print("$key is $value years old");
  });
  
}

bool jsonToFile(String file){
  Map<String, int> map = new Map();
  map.putIfAbsent('Aravi', () => 21);
  map.putIfAbsent('ivara', () => 2);
  
  String data = JSON.encode(map);
  return writeFile(file, data, FileMode.WRITE);
  
}

main(List<String> arguments) {
  String path = "D:/";
  String txtFile = 'D:/test.txt';
  String txtJSON = 'D:/json.txt';
  list(path);

  if(writeFile(txtFile, "Hello Dart IO\n", FileMode.APPEND)){
    print(readFile(txtFile));
    List<String> list = readLines(txtFile);
    print(list.length);
  }
  
  if(jsonToFile(txtJSON)) readJSON(txtJSON);

}
