import 'package:flutter/material.dart';

import '../../../../models/theme_style.dart';
import '../../../widgets/search.dart';
import '../../../widgets/title_menu.dart';
import 'profile_menu_popup.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: ThemeStyleDark.padding,
        horizontal: ThemeStyleDark.padding,
      ),
      child: Row(
        children: [
          const TitleMenu(),
          SizedBox(width: ThemeStyleDark.padding),
          SearchDefault(onSubmit: (String value) {}),
          SizedBox(width: ThemeStyleDark.padding),
          const ProfileMenuPopup(),
        ],
      ),
    );
  }
}
