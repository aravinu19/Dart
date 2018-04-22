

main(List<String> arguments) {

  bool isOn = true ;
  int test = 0;

  if(isOn == false){
    print('It is OFF');
  }else{
    print('It is ON !');
  }

  switch(test){
    case 0:
      print('Switch - test is zero');
      break;

    case 1:
      print('Switch - test is one');
      break;

    default: break;
  }

}
