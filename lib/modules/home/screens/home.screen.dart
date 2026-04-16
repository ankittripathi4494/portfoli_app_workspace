import 'package:flutter/material.dart';
import 'package:portfoli_app_workspace/global.dart' show CustomAppBarWidget, ButtonsWidget, TextWidget;
import 'package:portfoli_app_workspace/global/widgets/buttons.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        leading: Icon(Icons.hive_outlined),
        enableBackgroundImage: false,
        title: TextWidget(
          "Home Screen",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)
        ),
      ),
      body: Center(
        child: ButtonsWidget(
          onPressed: () {},
          buttonType: ButtonType.secondary,
          label: "Home Button",
          icon: Icons.person_pin,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FAB action
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('FAB Pressed!')));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
