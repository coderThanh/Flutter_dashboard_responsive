import 'dart:ui';

import 'package:dashboard_responsive_flutter/models/theme_icon.dart';
import 'package:dashboard_responsive_flutter/models/theme_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/menu_sidebar_item_widget.dart';
import '../../widgets/search.dart';
import '../../widgets/title_menu.dart';
import 'components/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Row(
        children: [
          const Sidebar(),
          Expanded(
            child: SizedBox(
              height: size.height,
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
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
                        Container(
                          width: 150,
                          height: 45,
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              color: ThemeStyleDark.surface70,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(ThemeStyleDark.radius))),
                        ),
                      ],
                    ),
                  ),
                  Placeholder(),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
