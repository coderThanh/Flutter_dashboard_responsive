import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    this.mobile,
    this.tablet,
    this.desktop,
    this.mediumDesktop,
    this.largeDesktop,
  }) : super(key: key);

  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? mediumDesktop;
  final Widget? largeDesktop;

  static int maxWidthMediumDesk = 1200;
  static int maxWidthDesk = 1024;
  static int maxWidthTable = 875;
  static int maxWidthMobile = 575;

// Get Bool function
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= maxWidthMobile;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= maxWidthTable &&
      MediaQuery.of(context).size.width >= maxWidthMobile;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= maxWidthTable;

// Show Widget only
  static Widget onlyDesktop(BuildContext context, Widget widget) {
    if (Responsive.isDesktop(context)) {
      return widget;
    } else {
      return const SizedBox.shrink();
    }
  }

  static Widget onlyTablet(BuildContext context, Widget widget) {
    if (Responsive.isTablet(context)) {
      return widget;
    } else {
      return const SizedBox.shrink();
    }
  }

  static Widget onlyMobile(
      {required BuildContext context, required Widget widget}) {
    if (Responsive.isMobile(context)) {
      return widget;
    } else {
      return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (largeDesktop != null && size.width >= maxWidthMediumDesk) {
      return largeDesktop!;
    } else if (mediumDesktop != null && size.width >= maxWidthDesk) {
      return mediumDesktop!;
    } else if (desktop != null && size.width >= maxWidthTable) {
      return desktop!;
    } else if (tablet != null && size.width >= maxWidthMobile) {
      return tablet!;
    } else {
      return mobile ?? const SizedBox.shrink();
    }
  }
}
