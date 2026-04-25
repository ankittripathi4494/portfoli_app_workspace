import 'package:flutter/material.dart';
import 'package:portfoli_app_workspace/gen/assets.gen.dart';
import 'package:portfoli_app_workspace/global.dart'
    show CustomAppBarWidget, ButtonsWidget, TextWidget;
import 'package:portfoli_app_workspace/global/widgets/buttons.widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(
        leading: Icon(Icons.hive_outlined),
        customiseAppBar: true,
        enableBackgroundImage: false,
        enableGradient: true,
        customGradient: LinearGradient(
          colors: [Colors.red, Colors.black],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        customImage: Assets.images.bg1.provider(),
        title: TextWidget(
          "Home Screen",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [
          ButtonsWidget(
            buttonType: ButtonType.icon,
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Action Pressed!')));
            },
            icon: Icons.settings,
          ),
          ButtonsWidget(
            buttonType: ButtonType.icon,
            onPressed: () {},
            icon: Icons.notifications,
          ),
          ButtonsWidget(
            buttonType: ButtonType.icon,
            onPressed: () {},
            icon: Icons.logout,
          ),
        ],
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
          // // Handle FAB action
          // ScaffoldMessenger.of(
          //   context,
          // ).showSnackBar(const SnackBar(content: Text('FAB Pressed!')));

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: CustomAppBarWidget(
                  // automaticallyImplyLeading: false,
                  enableBackgroundImage: false,
                  enableGradient: false,
                  title: TextWidget(
                    "New Screen",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                body: ListView.builder(
                  itemCount: 210,
                  itemBuilder: (context, index) => Text("Item $index"),
                ),
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
