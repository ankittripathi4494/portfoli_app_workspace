import 'package:flutter/material.dart';
import 'package:portfoli_app_workspace/global.dart' show TextWidget, AppBarWidget;


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        leadingIcon: Icons.home,
        title: 'Portfoli App',
        actions: [
          IconButton(
            icon: const Icon(Icons.person_pin),
            onPressed: () {
              // Handle settings action
            },
          ),
        ],
      ),
      body: const Center(child: TextWidget('Home Screen')));
  }
}
