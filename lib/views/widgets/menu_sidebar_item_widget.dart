import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/theme_style.dart';

class MenuSideBarItem extends StatelessWidget {
  const MenuSideBarItem({
    Key? key,
    this.isActive = false,
    required this.onTab,
    required this.text,
    required this.assetsIcon,
  }) : super(key: key);

  final bool isActive;
  final VoidCallback onTab;
  final String text;
  final String assetsIcon;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isActive ? 1 : 0.5,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? ThemeStyleDark.primary : Colors.transparent,
        ),
        child: TextButton(
          onPressed: onTab,
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: ThemeStyleDark.padding,
              vertical: ThemeStyleDark.padding * 1.5,
            ),
            primary: Theme.of(context).splashColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                assetsIcon,
                color: ThemeStyleDark.onSurface,
                width: 18,
                height: 18,
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                    color: ThemeStyleDark.onSurface,
                    fontSize: 16,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
