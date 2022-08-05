import 'package:flutter/material.dart';

import '../../../../models/clound_stotre_model.dart';
import '../../../../models/theme_style_mobdel.dart';
import '../../../widgets/title_button_widget.dart';
import 'box_file_detail.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
    this.margin,
    this.crossAxisCount,
    this.childAspectRatio,
  }) : super(key: key);

  final EdgeInsets? margin;
  final int? crossAxisCount;
  final double? childAspectRatio;

  static List<CloudStorage> demoMyFiels = [
    CloudStorage(
      title: "Documents",
      numOfFiels: 131332,
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
      // padding: EdgeInsets.symmetric(horizontal: ThemeStyleDark.padding),
      margin: margin ?? EdgeInsets.only(bottom: ThemeStyleDark.padding),
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
            padding: const EdgeInsets.all(0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount ?? 4,
              childAspectRatio: childAspectRatio ?? 1,
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
