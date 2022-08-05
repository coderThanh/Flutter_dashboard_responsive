// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'responsive_widget.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Responsive(
            desktop: const SizedBox.shrink(),
            mobile: Flexible(
              child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                padding: const EdgeInsets.all(0),
                splashRadius: 24,
                iconSize: 24,
                icon: const Icon(Icons.menu),
              ),
            ),
          ),
          Responsive.onlyTablet(context, SizedBox(width: 5)),
          Responsive(
              tablet: Text(
            'Transaction',
            style: Theme.of(context).textTheme.headline3,
          )),
        ],
      ),
    );
  }
}
