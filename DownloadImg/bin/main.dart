import 'package:image/image.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

void download(String url, String path, String preview){
  // Grab file from url
  var data = http.readBytes(url);
  data.then((value){
    File f = new File(path);
    RandomAccessFile rf = f.openSync(mode: FileMode.WRITE);
    rf.writeFromSync(value);
    rf.flushSync();
    rf.closeSync();

    // Resize the grabbed file

    Image image = decodeImage(new File(path).readAsBytesSync());

    Image thumbnail = copyResize(image, 200);

    //Save the thumbnail

    new File(preview).writeAsBytesSync(encodePng(thumbnail));

  });
}

main(List<String> arguments) {
  String url = "https://flutter.io/images/intellij/hot-reload.gif";
  String file = "D:/test.gif";
  String preview = "D:/preview.png";

  download(url, file, preview);

}
