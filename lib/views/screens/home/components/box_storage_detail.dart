import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../models/theme_style_mobdel.dart';
import '../../../widgets/check_condition_widget.dart';

class StorageBoxDetail extends StatelessWidget {
  const StorageBoxDetail({
    Key? key,
    required this.title,
    this.totalStorage = '',
    this.numberOfFile = '',
    this.assetName = '',
  }) : super(key: key);

  final String title;
  final String totalStorage;
  final String numberOfFile;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: ThemeStyleDark.padding),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: ThemeStyleDark.surface.withOpacity(0.12),
        border: Border.all(
          color: ThemeStyleDark.onSurface.withOpacity(0.12),
          width: 1,
        ),
        borderRadius:
            BorderRadius.all(Radius.circular(ThemeStyleDark.radius * 0.5)),
      ),
      child: Row(
        children: [
          Container(
            width: 18,
            height: 18,
            margin: const EdgeInsets.only(right: 15),
            child: CheckCondition(
              exception: assetName != '',
              ifTrue: SvgPicture.asset(assetName),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    height: 1.2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CheckCondition(
                  exception: numberOfFile != '',
                  ifTrue: const SizedBox(height: 5),
                ),
                CheckCondition(
                  exception: numberOfFile != '',
                  ifTrue: Text(
                    numberOfFile,
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 13,
                      color: ThemeStyleDark.onSurface.withOpacity(0.6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CheckCondition(
            exception: totalStorage != '',
            ifTrue: Text(
              totalStorage,
              textAlign: TextAlign.right,
              style: const TextStyle(
                height: 1.2,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
