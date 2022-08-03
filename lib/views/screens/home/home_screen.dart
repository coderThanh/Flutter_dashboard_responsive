import 'package:dashboard_responsive_flutter/models/theme_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/clound_stotre.dart';
import '../../../models/theme_icon.dart';
import '../../widgets/popup_menu_item_inner_widget.dart';
import '../../widgets/title_button_widget.dart';
import 'components/header.dart';
import 'components/my_files.dart';
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
      body: SafeArea(
        child: Row(
          children: [
            const Sidebar(),
            Expanded(
              child: SizedBox(
                height: size.height,
                child: SingleChildScrollView(
                  child: Column(children: [
                    const Header(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyFiles(),
                            Placeholder(),
                          ],
                        )),
                        Container(
                          width: 340,
                          child: const Placeholder(),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
