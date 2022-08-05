import 'package:flutter/material.dart';

class DataTableLabel extends StatelessWidget {
  const DataTableLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 14,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w500,
        height: 1.3,
      ),
    );
  }
}
