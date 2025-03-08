
import 'package:flutter/cupertino.dart';

class Utils{
  static double statusBarHeight(BuildContext context){
    return MediaQuery.of(context).padding.top;
  }

  static double bottomNotchHeight(BuildContext context){
    return MediaQuery.of(context).padding.bottom;
  }

  static double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static double screenWeight(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static String formatImageSize(int bytes) {
    if (bytes < 1024) {
      return '$bytes B'; // Bytes
    } else if (bytes < 1024 * 1024) {
      return '${(bytes / 1024).toStringAsFixed(2)} KB'; // KB
    } else {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(2)} MB'; // MB
    }
  }

}