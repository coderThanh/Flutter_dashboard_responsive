import 'package:flutter/material.dart';

import 'button_widget.dart';

class TitleButton extends StatelessWidget {
  const TitleButton({
    Key? key,
    required this.title,
    this.textButton,
    this.onPress,
    this.icon,
  }) : super(key: key);

  final String title;
  final String? textButton;
  final VoidCallback? onPress;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final Widget result;

    if (textButton != null) {
      result = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.left,
          ),
          ButtonDefault(
            text: textButton!,
            onPress: onPress ?? () {},
            icon: icon,
          ),
        ],
      );
    } else {
      result = Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      );
    }

    return result;
  }
}
