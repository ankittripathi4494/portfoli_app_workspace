import 'package:flutter/material.dart';
import 'package:portfoli_app_workspace/gen/assets.gen.dart';
import 'package:portfoli_app_workspace/global.dart' show TextWidget;

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Assets.images.reboot.image(width: 100, height: 100),
           
            TextWidget('Network Error'),
          ],
        ),
      ),
    );
  }
}
