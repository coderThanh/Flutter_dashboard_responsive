import 'package:flutter/material.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Text(
      'Transaction',
      style: Theme.of(context).textTheme.headline3,
    ));
  }
}
