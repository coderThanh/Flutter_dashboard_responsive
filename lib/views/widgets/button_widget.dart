import 'package:flutter/material.dart';

import '../../models/theme_style_mobdel.dart';

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

    return Container(
      constraints: const BoxConstraints(minHeight: 0, minWidth: 0),
      height: 32,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
          primary: Theme.of(context).splashColor,
          minimumSize: const Size(5, 5),
          textStyle: const TextStyle(height: 1.1),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: buttonContext,
      ),
    );
  }
}
