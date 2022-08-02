import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/theme_icon.dart';
import '../../models/theme_style.dart';

class SearchDefault extends StatelessWidget {
  const SearchDefault({
    Key? key,
    this.width = 250,
    this.height = 45,
    required this.onSubmit,
  }) : super(key: key);

  final double width;
  final double height;
  final void Function(String) onSubmit;

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();

    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(top: 5, left: 10, right: 5, bottom: 5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ThemeStyleDark.surface70,
        borderRadius: BorderRadius.all(Radius.circular(ThemeStyleDark.radius)),
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
                // Clear Height
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
          Material(
            color: ThemeStyleDark.primary,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            child: IconButton(
              iconSize: 16,
              onPressed: () => onSubmit(textEditingController.text),
              padding: const EdgeInsets.all(8),
              icon: SvgPicture.asset(
                ThemeIcon.search,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          )
        ],
      ),
    );
  }
}
