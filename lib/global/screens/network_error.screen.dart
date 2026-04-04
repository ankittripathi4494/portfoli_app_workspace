import 'package:flutter/material.dart';
import 'package:portfoli_app_workspace/global.dart'
    show AssetImageWidget, TextWidget, ResourceHelper;

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            AssetImageWidget(
              imagePath: ResourceHelper.getImagePath('network_error.png'),
            ),
            TextWidget('Network Error'),
          ],
        ),
      ),
    );
  }
}
