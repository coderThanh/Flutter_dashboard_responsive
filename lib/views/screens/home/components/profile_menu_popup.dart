import 'package:dashboard_responsive_flutter/views/widgets/check_condition_widget.dart';
import 'package:flutter/material.dart';

import '../../../../models/theme_icon_model.dart';
import '../../../../models/theme_style_mobdel.dart';
import '../../../widgets/popup_menu_item_inner_widget.dart';

class ProfileMenuPopup extends StatelessWidget {
  const ProfileMenuPopup({
    Key? key,
    this.width = 150,
    this.height = 40,
    this.showTitle = true,
  }) : super(key: key);

  final double width;
  final double height;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: ThemeStyleDark.surface70,
        borderRadius:
            BorderRadius.all(Radius.circular(ThemeStyleDark.radius * 0.5)),
      ),
      child: PopupMenuButton(
        constraints: const BoxConstraints(maxWidth: 200),
        padding: const EdgeInsets.all(0),
        splashRadius: 5,
        elevation: 0,
        tooltip: '',
        position: PopupMenuPosition.under,
        offset: const Offset(8, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/profile_pic.png',
              fit: BoxFit.contain,
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 4),
            CheckCondition(
                exception: showTitle,
                ifTrue: Expanded(
                  child: Text(
                    'Angelian Joli',
                    style: TextStyle(
                      color: ThemeStyleDark.onSurface,
                      fontSize: 12,
                      height: 1.1,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )),
            const SizedBox(width: 4),
            const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 18,
            )
          ],
        ),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
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
      ),
    );
  }
}
