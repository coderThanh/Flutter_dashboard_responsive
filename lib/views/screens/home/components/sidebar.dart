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
            SizedBox(height: ThemeStyleDark.padding * 3),
            Image.asset(
              'assets/images/logo.png',
              width: 80,
              fit: BoxFit.contain,
            ),
            SizedBox(height: ThemeStyleDark.padding * 3),
            Container(
              height: 1,
              decoration: BoxDecoration(
                color: ThemeStyleDark.onSurface.withOpacity(0.08),
              ),
            ),
            // SizedBox(height: ThemeStyleDark.padding * 2),
            MenuSideBarItem(
              text: "Dashboard",
              onTab: () {},
              assetsIcon: ThemeIcon.menu,
            ),
            MenuSideBarItem(
              text: "Transaction",
              onTab: () {},
              assetsIcon: ThemeIcon.menuTran,
              isActive: true,
            ),
            MenuSideBarItem(
              text: "Task",
              onTab: () {},
              assetsIcon: ThemeIcon.menuTask,
            ),
            MenuSideBarItem(
              text: "Documents",
              onTab: () {},
              assetsIcon: ThemeIcon.menuFile,
            ),
            MenuSideBarItem(
              text: "Store",
              onTab: () {},
              assetsIcon: ThemeIcon.menuStore,
            ),
            MenuSideBarItem(
              text: "Notification",
              onTab: () {},
              assetsIcon: ThemeIcon.menuNotificate,
            ),
            MenuSideBarItem(
              text: "Account",
              onTab: () {},
              assetsIcon: ThemeIcon.menuProfile,
            ),
            MenuSideBarItem(
              text: "Settings",
              onTab: () {},
              assetsIcon: ThemeIcon.menuSetting,
            ),
            SizedBox(height: ThemeStyleDark.padding * 2),
          ],
        ),
      ),
    );
  }
}
