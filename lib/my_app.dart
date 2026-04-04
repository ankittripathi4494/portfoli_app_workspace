part of 'main.dart';

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
    return MaterialApp.router(
      title: _getTitleForFlavour,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      
      routerConfig: router,
    );
  }
}
