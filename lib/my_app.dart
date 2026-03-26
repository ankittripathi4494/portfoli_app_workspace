import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfoli_app_workspace/global/global.export.dart';
import 'package:portfoli_app_workspace/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  String get _getLabelForFlavour {
    if (appFlavor?.toCompareHelper() == 'production'.toCompareHelper()) {
      return "Production";
    } else if (appFlavor?.toCompareHelper() == 'qa'.toCompareHelper()) {
      return "Test";
    } else {
      return "Development";
    }
  }

  String get _getTitleForFlavour {
    if (appFlavor?.toCompareHelper() == 'production'.toCompareHelper()) {
      return "My Portfoli";
    } else if (appFlavor?.toCompareHelper() == 'qa'.toCompareHelper()) {
      return "My Portfoli (Test)";
    } else {
      return "My Portfoli (Dev)";
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _getTitleForFlavour,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MyHomePage(title: '$_getTitleForFlavour Home Page'),
    );
  }
}
