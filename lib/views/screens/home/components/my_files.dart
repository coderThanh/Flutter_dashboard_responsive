import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/clound_stotre.dart';
import '../../../../models/theme_icon.dart';
import '../../../../models/theme_style.dart';
import '../../../widgets/popup_menu_item_inner_widget.dart';
import '../../../widgets/popup_menu_icon_widget.dart';
import '../../../widgets/process_bar_widget.dart';
import '../../../widgets/title_button_widget.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  static List<CloudStorage> demoMyFiels = [
    CloudStorage(
      title: "Documents",
      numOfFiels: 13123,
      svgSrc: "assets/icons/Documents.svg",
      totalStorage: "1.91GB",
      color: const Color(0xFF2697FF),
      percentage: 35,
    ),
    CloudStorage(
      title: "Google Drive",
      numOfFiels: 1328,
      svgSrc: "assets/icons/google_drive.svg",
      totalStorage: "2.9GB",
      color: const Color(0xFFFFA113),
      percentage: 45,
    ),
    CloudStorage(
      title: "One Drive",
      numOfFiels: 1328,
      svgSrc: "assets/icons/one_drive.svg",
      totalStorage: "1GB",
      color: const Color(0xFFA4CDFF),
      percentage: 10,
    ),
    CloudStorage(
      title: "Documents",
      numOfFiels: 5328,
      svgSrc: "assets/icons/drop_box.svg",
      totalStorage: "7.3GB",
      color: const Color(0xFF007EE5),
      percentage: 78,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ThemeStyleDark.padding),
      margin: EdgeInsets.only(bottom: ThemeStyleDark.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleButton(
            title: 'My Files',
            textButton: 'Add New',
            icon: Icons.add,
          ),
          SizedBox(height: ThemeStyleDark.padding),
          GridView.builder(
            itemCount: demoMyFiels.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.5,
              mainAxisSpacing: ThemeStyleDark.padding,
              crossAxisSpacing: ThemeStyleDark.padding,
            ),
            itemBuilder: (content, index) =>
                BoxFileDetail(cloudStorage: demoMyFiels[index]),
          ),
        ],
      ),
    );
  }
}

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
          mainAxisAlignment: MainAxisAlignment.center,
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
            SizedBox(height: ThemeStyleDark.padding * 0.8),
            Text(
              cloudStorage.title,
              style: TextStyle(
                  color: ThemeStyleDark.onSurface, fontSize: 14, height: 1.3),
            ),
            SizedBox(height: ThemeStyleDark.padding * 0.8),
            ProcessBar(
              percentage: cloudStorage.percentage,
              color: cloudStorage.color,
            ),
            SizedBox(height: ThemeStyleDark.padding * 0.8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                Expanded(
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
