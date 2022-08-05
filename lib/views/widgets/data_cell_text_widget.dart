import 'package:flutter/material.dart';

class DataCellText extends StatelessWidget {
  const DataCellText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        height: 1.3,
      ),
    );
  }
}
