import 'package:fun/fun.dart' as fun;
import 'package:fun/MoreFun.dart' as mfun;

main(List<String> arguments) {

  test();

}

void test(){
  for(int i =0; i<9; i++){
    print('hello, let\'s print some dashes ......');
    fun.PrintDash(10);
    print(mfun.repeatTheNumber(i));

  }
}
