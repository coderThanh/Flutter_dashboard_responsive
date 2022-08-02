import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/theme_style.dart';

class PopupMenuItemInner extends StatelessWidget {
  const PopupMenuItemInner({
    Key? key,
    required this.assetIcon,
    required this.text,
  }) : super(key: key);

  final String assetIcon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          assetIcon,
          color: ThemeStyleDark.onSurface.withOpacity(0.7),
          width: 17,
          height: 17,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                ),
          ),
        ),
      ],
    );
  }
}
