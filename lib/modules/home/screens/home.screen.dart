import 'package:flutter/material.dart';
import 'package:portfoli_app_workspace/global.dart' show TextWidget;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: TextWidget('Home Screen')));
  }
}
