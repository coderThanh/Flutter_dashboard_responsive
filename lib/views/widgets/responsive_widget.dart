import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    this.desktop,
    this.tablet,
    required this.mobile,
  }) : super(key: key);

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  static bool isMoblie(BuildContext context) =>
      MediaQuery.of(context).size.width <= 550;

  static bool isTable(BuildContext context) =>
      MediaQuery.of(context).size.width <= 850 &&
      MediaQuery.of(context).size.width >= 550;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (desktop != null && size.width >= 850) {
      return desktop!;
    } else if (size.width >= 550 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
