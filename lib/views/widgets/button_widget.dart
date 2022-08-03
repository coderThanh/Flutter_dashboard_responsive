import 'package:flutter/material.dart';

import '../../models/theme_style.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({
    Key? key,
    required this.text,
    required this.onPress,
    this.icon,
    this.backgroundColor,
  }) : super(key: key);

  final IconData? icon;
  final String text;
  final VoidCallback onPress;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final Widget buttonContext;

    if (icon is IconData) {
      buttonContext = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.add,
            color: ThemeStyleDark.onSurface,
            size: 16,
          ),
          const SizedBox(width: 2),
          Text(
            text,
            style: TextStyle(
              color: ThemeStyleDark.onSurface,
              fontSize: 14,
              height: 1.1,
            ),
          ),
        ],
      );
    } else {
      buttonContext = Text(
        text,
        style: TextStyle(
          color: ThemeStyleDark.onSurface,
          fontSize: 14,
          height: 1.1,
        ),
      );
    }

    return TextButton(
      onPressed: onPress,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
        primary: Theme.of(context).splashColor,
        minimumSize: const Size(0, 0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 9,
        ),
        child: buttonContext,
      ),
    );
  }
}
