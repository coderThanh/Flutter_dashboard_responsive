import 'package:flutter/material.dart';

import '../../models/theme_style_mobdel.dart';

class PopupMenuIcon extends StatelessWidget {
  const PopupMenuIcon({
    Key? key,
    this.iconColor,
    this.widthIcon = 30,
    this.heightIcon = 30,
    this.backgroundIcon,
    this.listItem,
    this.tooltip = 'More',
    this.iconData,
  }) : super(key: key);

  final Color? iconColor;
  final Color? backgroundIcon;
  final String tooltip;
  final double widthIcon;
  final double heightIcon;
  final IconData? iconData;
  final List<PopupMenuEntry>? listItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthIcon,
      height: heightIcon,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: backgroundIcon ?? Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Material(
        color: Colors.transparent,
        child: PopupMenuButton(
          tooltip: tooltip,
          padding: const EdgeInsets.all(0),
          position: PopupMenuPosition.under,
          icon: Icon(
            iconData ?? Icons.more_vert,
            color: iconColor ?? ThemeStyleDark.onSurface.withOpacity(0.5),
          ),
          splashRadius: widthIcon,
          elevation: 10,
          itemBuilder: ((context) => listItem ?? []),
        ),
      ),
    );
  }
}
