import 'package:flutter/material.dart';

import '../../../../models/theme_style_mobdel.dart';
import '../../../widgets/responsive_widget.dart';
import 'header.dart';
import 'my_files.dart';
import 'recent_files.dart';
import 'sidebar.dart';
import 'storage_wrap.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Responsive.onlyDesktop(context, const Sidebar()),

        // Body Content
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
                left: ThemeStyleDark.padding,
                right: ThemeStyleDark.padding,
                top: ThemeStyleDark.padding,
                bottom: ThemeStyleDark.padding * 3),
            controller: scrollController,
            child: Column(
              children: [
                const SafeArea(
                  bottom: false,
                  child: Header(),
                ),

                // Body Desktop, table
                Responsive(
                  largeDesktop: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyFiles(
                              crossAxisCount: 4,
                              childAspectRatio: 1.4,
                            ),
                            RecentFiles(),
                          ],
                        ),
                      ),
                      const StorageWrap(width: 350),
                    ],
                  ),
                  desktop: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyFiles(
                              crossAxisCount: 2,
                              childAspectRatio: 1.78,
                            ),
                            RecentFiles(),
                          ],
                        ),
                      ),
                      const StorageWrap(width: 280),
                    ],
                  ),
                  tablet: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            MyFiles(
                              crossAxisCount: 2,
                              childAspectRatio: 1.5,
                            ),
                            RecentFiles(),
                          ],
                        ),
                      ),
                      const StorageWrap(width: 220),
                    ],
                  ),
                  mobile: const SizedBox.shrink(),
                ),

                // Body mobile
                Responsive.onlyMobile(
                    context: context,
                    widget: MyFiles(
                        crossAxisCount: 2,
                        childAspectRatio: 4 / 3.2,
                        margin: EdgeInsets.only(
                            bottom: ThemeStyleDark.padding * 2))),
                Responsive.onlyMobile(
                    context: context,
                    widget: RecentFiles(
                        margin: EdgeInsets.only(
                            bottom: ThemeStyleDark.padding * 2))),
                Responsive.onlyMobile(
                    context: context,
                    widget: const StorageWrap(margin: EdgeInsets.all(0))),
              ],
            ),
          ),
        )
      ],
    );
  }
}
