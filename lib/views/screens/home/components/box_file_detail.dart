import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../models/clound_stotre_model.dart';
import '../../../../models/theme_icon_model.dart';
import '../../../../models/theme_style_mobdel.dart';
import '../../../widgets/popup_menu_icon_widget.dart';
import '../../../widgets/popup_menu_item_inner_widget.dart';
import '../../../widgets/process_bar_widget.dart';

class BoxFileDetail extends StatelessWidget {
  const BoxFileDetail({
    Key? key,
    required this.cloudStorage,
  }) : super(key: key);

  final CloudStorage cloudStorage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: ThemeStyleDark.surface70,
        borderRadius: BorderRadius.all(
          Radius.circular(ThemeStyleDark.radius * 0.5),
        ),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: cloudStorage.color.withOpacity(0.12),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SvgPicture.asset(
                    cloudStorage.svgSrc,
                  ),
                ),
                PopupMenuIcon(
                  listItem: [
                    PopupMenuItem<String>(
                      value: 'Notification',
                      child: PopupMenuItemInner(
                        assetIcon: ThemeIcon.menuNotificate,
                        text: 'Notification',
                      ),
                      onTap: () {},
                    ),
                    PopupMenuItem<String>(
                      value: 'Setting',
                      child: PopupMenuItemInner(
                        assetIcon: ThemeIcon.menuSetting,
                        text: 'Setting',
                      ),
                      onTap: () {},
                    ),
                    PopupMenuItem<String>(
                      value: 'Profile',
                      child: PopupMenuItemInner(
                        assetIcon: ThemeIcon.menuProfile,
                        text: 'Profile',
                      ),
                      onTap: () {},
                    ),
                    PopupMenuItem<String>(
                      value: 'file',
                      child: PopupMenuItemInner(
                        assetIcon: ThemeIcon.menuFile,
                        text: 'File',
                      ),
                      onTap: () {},
                    ),
                  ],
                )
              ],
            ),
            Text(
              cloudStorage.title,
              style: TextStyle(
                  color: ThemeStyleDark.onSurface, fontSize: 14, height: 1.3),
            ),
            ProcessBar(
              percentage: cloudStorage.percentage,
              color: cloudStorage.color,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    '${cloudStorage.numOfFiels} Files',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: ThemeStyleDark.onSurface.withOpacity(0.7),
                      fontSize: 13,
                      height: 1.3,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    cloudStorage.totalStorage,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: ThemeStyleDark.onSurface,
                      fontSize: 13,
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
          ]),
    );
  }
}
