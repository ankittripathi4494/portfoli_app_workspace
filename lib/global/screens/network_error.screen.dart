import 'package:flutter/material.dart'
    show Center, Column, StatelessWidget, Widget, Scaffold, BuildContext;
import 'package:portfoli_app_workspace/global/utils/resource.helper.dart';
import 'package:portfoli_app_workspace/global/widgets/export.dart'
    show AssetImageWidget, TextWidget;

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
