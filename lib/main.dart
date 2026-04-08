import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfoli_app_workspace/global/themes/theme.dart';
import 'global.dart';
part 'my_app.dart';

void main() {
  runApp(const MyApp());
}

/* 
  part is a special method to split the code into multiple files and it is used to import the file into main.dart file.
  It is used to keep the code organized and maintainable. 
  It is also used to avoid the circular dependency issue.
*/
