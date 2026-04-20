import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Widget? leading;
  final double appBarHeight;
  final bool enableBackgroundImage;
  final bool automaticallyImplyLeading;
  final dynamic title;
  final List<Widget>? actions;
  const CustomAppBarWidget({
    super.key,
    this.leading,
    this.appBarHeight = kToolbarHeight,
    this.automaticallyImplyLeading = true,
    this.enableBackgroundImage = false,
    this.title,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    // AppBar with optional background image and leading widget
    // AppBar comes with flutter by default, so we can use it directly and customize as needed
    return AppBar(
      leading: leading,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: automaticallyImplyLeading,
      flexibleSpace: enableBackgroundImage
          ? Container(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.5),
                image: DecorationImage(
                  image: AssetImage("assets/images/bg2.webp"),
                  fit: BoxFit.cover,
                ),
              ),
            )
          : null,
      title: _getTitleWidget(),
      actions: actions,
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
