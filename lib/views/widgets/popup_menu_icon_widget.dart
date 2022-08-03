import 'package:flutter/material.dart';

import '../../models/theme_style.dart';
import 'popup_menu_item_inner_widget.dart';

class PopupMenuIcon extends StatelessWidget {
  const PopupMenuIcon({
    Key? key,
    this.iconColor,
    this.widthIcon,
    this.heightIcon,
    this.backgroundIcon,
    this.listItem,
    this.tooltip,
    this.iconData,
  }) : super(key: key);

  final IconData? iconData;
  final Color? iconColor;
  final double? widthIcon;
  final double? heightIcon;
  final Color? backgroundIcon;
  final List<PopupMenuEntry>? listItem;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthIcon ?? 30,
      height: heightIcon ?? 30,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: backgroundIcon ?? Colors.transparent,
        borderRadius: const BorderRadius.all(const Radius.circular(5)),
      ),
      child: Material(
        color: Colors.transparent,
        child: PopupMenuButton(
          tooltip: tooltip ?? 'More',
          padding: const EdgeInsets.all(0),
          position: PopupMenuPosition.under,
          icon: Icon(
            iconData ?? Icons.more_vert,
            color: iconColor ?? ThemeStyleDark.onSurface.withOpacity(0.5),
          ),
          splashRadius: widthIcon ?? 30,
          elevation: 10,
          itemBuilder: ((context) => listItem ?? []),
        ),
      ),
    );
  }
}
