import 'dog.dart';

class trainer<T extends dog> {
  List<T> _animals = new List<T>();
  void add(T value) => _animals.add(value);
  void remove(T value) => _animals.remove(value);
  
  void train(){
    
    _animals.forEach((value){
      value.speak();
    });
  }
  
}