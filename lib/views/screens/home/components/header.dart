import 'package:flutter/material.dart';

import '../../../../models/theme_style_mobdel.dart';
import '../../../widgets/responsive_widget.dart';
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
      padding: EdgeInsets.only(
        bottom: ThemeStyleDark.padding,
      ),
      child: Row(
        children: [
          const TitleMenu(),
          SizedBox(width: ThemeStyleDark.padding),
          Responsive(
            mediumDesktop: SearchDefault(
              onSubmit: (String value) {},
              width: 350,
            ),
            tablet: SearchDefault(
              onSubmit: (String value) {},
              width: 180,
            ),
            mobile: SearchDefault(
              onSubmit: (String value) {},
              width: 150,
            ),
          ),
          SizedBox(width: ThemeStyleDark.padding),
          const Responsive(
            tablet: ProfileMenuPopup(),
            mobile: ProfileMenuPopup(
              showTitle: false,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
