import 'package:dashboard_responsive_flutter/views/widgets/check_condition_widget.dart';
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
  final VoidCallback? onPress;
  final String? textButton;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return CheckCondition(
      exception: textButton != null,
      ifTrue: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.left,
          ),
          ButtonDefault(
            text: textButton.toString(),
            onPress: onPress ?? () {},
            icon: icon,
          ),
        ],
      ),
      ifFalse: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
