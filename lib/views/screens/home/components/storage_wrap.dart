import 'package:flutter/material.dart';

import '../../../../models/theme_icon_model.dart';
import '../../../../models/theme_style_mobdel.dart';
import '../../../widgets/title_button_widget.dart';
import 'box_storage_detail.dart';
import 'storage_piechar.dart';

class StorageWrap extends StatelessWidget {
  const StorageWrap({
    Key? key,
    this.width,
    this.margin,
  }) : super(key: key);

  final double? width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: width ?? size.width,
      padding: EdgeInsets.all(ThemeStyleDark.padding),
      margin: margin ?? EdgeInsets.only(left: ThemeStyleDark.padding),
      decoration: BoxDecoration(
        color: ThemeStyleDark.surface70,
        borderRadius: BorderRadius.all(
          Radius.circular(ThemeStyleDark.radius * 0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TitleButton(title: 'Storage Details'),
          const StorageDetailPieChar(),
          StorageBoxDetail(
            title: 'Documents Filesd',
            assetName: ThemeIcon.file,
            totalStorage: '1.3GB',
            numberOfFile: '1328 file',
          ),
          StorageBoxDetail(
            title: 'Meida Files',
            assetName: ThemeIcon.playBg,
            totalStorage: '15.2GB',
            numberOfFile: '1328 file',
          ),
          StorageBoxDetail(
            title: 'Orther Files',
            assetName: ThemeIcon.folder,
            totalStorage: '3.9GB',
            numberOfFile: '1328 file',
          ),
          StorageBoxDetail(
            title: 'Unknows',
            assetName: ThemeIcon.unkown,
            totalStorage: '1.3GB',
            numberOfFile: '1328 file',
          ),
        ],
      ),
    );
  }
}
