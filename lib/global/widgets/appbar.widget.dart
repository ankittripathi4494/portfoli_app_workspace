import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final IconData? leadingIcon;
  final String? title;
  final List<Widget>? actions;
  const AppBarWidget({super.key, this.leadingIcon, this.title, this.actions});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);


  @override
  Widget build(BuildContext context) {
    /// AppBar Component, you can customize it as per your requirements.
    /// For example, you can add title, actions, background color, etc.
    /// Design and functionality of the AppBar can be enhanced based on your application's needs.
    /// Here is a basic implementation of an AppBar. You can modify it to include more features as needed.
    ///
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      leading: leadingIcon != null ? Icon(leadingIcon) : null,
      title: title != null ? Text(title!) : null,
      actions: actions,
    );
  }
}
