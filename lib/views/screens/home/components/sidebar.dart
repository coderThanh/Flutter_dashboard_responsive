import 'package:flutter/material.dart';

import '../../../../models/theme_icon.dart';
import '../../../../models/theme_style.dart';
import '../../../widgets/menu_sidebar_item_widget.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: 250,
      height: size.height,
      decoration: BoxDecoration(
        color: ThemeStyleDark.surface70,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: ThemeStyleDark.padding * 2.5),
            Image.asset(
              'assets/images/logo.png',
              width: 80,
              fit: BoxFit.contain,
            ),
            SizedBox(height: ThemeStyleDark.padding * 4),
            MenuSideBarItem(
              text: "Dashboard",
              assetsIcon: ThemeIcon.menu,
            ),
            MenuSideBarItem(
              text: "Transaction",
              assetsIcon: ThemeIcon.menuTran,
              isActive: true,
            ),
            MenuSideBarItem(
              text: "Task",
              assetsIcon: ThemeIcon.menuTask,
            ),
            MenuSideBarItem(
              text: "Documents",
              assetsIcon: ThemeIcon.menuFile,
            ),
            MenuSideBarItem(
              text: "Store",
              assetsIcon: ThemeIcon.menuStore,
            ),
            MenuSideBarItem(
              text: "Notification",
              assetsIcon: ThemeIcon.menuNotificate,
            ),
            MenuSideBarItem(
              text: "Account",
              assetsIcon: ThemeIcon.menuProfile,
            ),
            MenuSideBarItem(
              text: "Settings",
              assetsIcon: ThemeIcon.menuSetting,
            ),
            SizedBox(height: ThemeStyleDark.padding * 2),
          ],
        ),
      ),
    );
  }
}
