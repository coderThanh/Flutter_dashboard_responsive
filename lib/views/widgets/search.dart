import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/theme_icon_model.dart';
import '../../models/theme_style_mobdel.dart';

class SearchDefault extends StatelessWidget {
  const SearchDefault({
    Key? key,
    this.width = 250,
    this.height = 40,
    this.assetIcon,
    required this.onSubmit,
  }) : super(key: key);

  final double width;
  final double height;
  final String? assetIcon;
  final void Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(top: 4, left: 10, right: 4, bottom: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ThemeStyleDark.surface70,
        borderRadius:
            BorderRadius.all(Radius.circular(ThemeStyleDark.radius * 0.5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: textEditingController,
              maxLength: 100,
              scrollPadding: const EdgeInsets.all(0),
              onSubmitted: onSubmit,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                isDense: true,
                border: InputBorder.none,
                hintText: "Search",
                hintStyle: TextStyle(
                  height: 1,
                  fontSize: 16,
                ),
                counterText: '',
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          SizedBox(
            width: height,
            height: height,
            child: Material(
              color: ThemeStyleDark.primary,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: IconButton(
                iconSize: 16,
                onPressed: () => onSubmit(textEditingController.text),
                padding: const EdgeInsets.all(8),
                icon: SvgPicture.asset(
                  assetIcon ?? ThemeIcon.search,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
