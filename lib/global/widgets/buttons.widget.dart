import 'package:duration_button/duration_button.dart';
import 'package:flutter/material.dart';

enum ButtonType {
  elevated,
  outlined,
  text,
  primary,
  secondary,
  icon,
  timer,
  custom,
}

class ButtonsWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final ButtonType buttonType;
  final String label;
  final IconData? icon;
  final Duration duration;
  const ButtonsWidget({
    super.key,
    required this.onPressed,
    this.buttonType = ButtonType.elevated,
    this.label = 'Button',
    this.icon,
    this.duration = const Duration(milliseconds: 200),
  });

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case ButtonType.elevated:
        if (icon != null) {
          return ElevatedButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(label),
          );
        } else {
          return ElevatedButton(onPressed: onPressed, child: Text(label));
        }
      case ButtonType.outlined:
        if (icon != null) {
          return OutlinedButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(label),
          );
        } else {
          return OutlinedButton(onPressed: onPressed, child: Text(label));
        }
      case ButtonType.text:
        if (icon != null) {
          return TextButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(label),
          );
        } else {
          return TextButton(onPressed: onPressed, child: Text(label));
        }
      case ButtonType.primary:
        if (icon != null) {
          return FilledButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(label),
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
            ),
          );
        } else {
          return FilledButton(
            onPressed: onPressed,
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.onPrimary,
            ),
            child: Text(label),
          );
        }
      case ButtonType.secondary:
        if (icon != null) {
          return FilledButton.icon(
            onPressed: onPressed,
            icon: Icon(icon),
            label: Text(label),
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              foregroundColor: Theme.of(context).colorScheme.onSecondary,
            ),
          );
        } else {
          return FilledButton(
            onPressed: onPressed,
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              foregroundColor: Theme.of(context).colorScheme.onSecondary,
            ),
            child: Text(label),
          );
        }
      case ButtonType.icon:
        return IconButton(onPressed: onPressed, icon: Icon(icon ?? Icons.star));
      case ButtonType.timer:
        return DurationButton(
          onPressed: () {},
          onComplete: onPressed,
          duration: duration,
          child: null,
        );
      case ButtonType.custom:
        // Implement custom button logic here
        return ElevatedButton(onPressed: onPressed, child: Text(label));
    }
  }
}
