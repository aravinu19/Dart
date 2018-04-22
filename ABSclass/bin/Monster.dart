import 'bird.dart';
import 'scorpian.dart';
import 'feline.dart';

class Monster implements bird, feline, scorpian{
  bool hasStinger() => true;
  bool hasHair() => true;
  bool hasBackBone() => true;
  bool hasWings() => true;
  bool hasClaws() => true;

  @override
  @override
  void speak() {
    // TODO: implement speak
    print('Booooooooooooooooooo....');
  }

}