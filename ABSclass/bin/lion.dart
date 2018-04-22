import 'feline.dart';

class lion extends feline{

  bool hasBackBone() => true;
  bool hasHair() => true;
  bool hasClaws() => true;

  @override
  void speak() {
    // TODO: implement speak
    print('roar..............');
  }

}