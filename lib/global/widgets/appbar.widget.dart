import 'package:flutter/material.dart';
import 'package:portfoli_app_workspace/gen/assets.gen.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget? leading;
  final double appBarHeight;
  final bool enableBackgroundImage;
  final bool enableGradient;
  final bool customiseAppBar;
  final bool automaticallyImplyLeading;
  final ImageProvider<Object>? customImage;
  final Color? customColor;
  final dynamic title;
  final List<Widget>? actions;
  final Gradient? customGradient;
  const CustomAppBarWidget({
    super.key,
    this.leading,
    this.customiseAppBar = false,
    this.appBarHeight = kToolbarHeight,
    this.automaticallyImplyLeading = true,
    this.enableGradient = false,
    this.enableBackgroundImage = false,
    this.title,
    this.actions,
    this.customImage,
    this.customColor,
    this.customGradient,
  });

  @override
  Widget build(BuildContext context) {
    // AppBar with optional background image and leading widget
    // AppBar comes with flutter by default, so we can use it directly and customize as needed

    return AppBar(
      leading: leading,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: _getBackground(context),
      title: _getTitleWidget(),
      actions: actions,
    );
  }

  Container? _getBackground(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    if (customiseAppBar == true) {
      if (enableBackgroundImage == true) {
        return _getAppBarTemplate(imageSection: customImage!);
      }
      if (enableGradient == true) {
        return Container(decoration: BoxDecoration(gradient: customGradient));
      }
      return Container(
        decoration: BoxDecoration(color: customColor?.withValues(alpha: 0.5)),
      );
    }
    if (enableBackgroundImage == true) {
      return _getAppBarTemplate(imageSection: Assets.images.bg2.provider());
    }
    if (enableGradient == true) {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorScheme.primary, colorScheme.onSecondaryContainer],
          ),
        ),
      );
    }
    return null;
  }

  Container _getAppBarTemplate({required ImageProvider<Object> imageSection}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.5),
        image: DecorationImage(image: imageSection, fit: BoxFit.cover),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  Widget? _getTitleWidget() {
    if (title == null) {
      return null;
    } else if (title is String) {
      return Text(title);
    } else if (title is Widget) {
      return title;
    } else {
      throw ArgumentError('Title must be either a String or a Widget');
    }
  }
}
