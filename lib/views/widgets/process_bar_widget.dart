import 'package:flutter/material.dart';

class ProcessBar extends StatelessWidget {
  const ProcessBar({
    Key? key,
    this.color,
    required this.percentage,
    this.height,
    this.width,
  }) : super(key: key);

  final Color? color;
  final double percentage;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 5,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color?.withOpacity(0.12) ??
            Theme.of(context).primaryColor.withOpacity(0.12),
        borderRadius: BorderRadius.all(Radius.circular(height ?? 5)),
      ),
      child: Stack(
        children: [
          Positioned(
            child: LayoutBuilder(builder: (context, constraints) {
              return Container(
                width: (percentage * constraints.maxWidth) / 100,
                decoration: BoxDecoration(
                  color: color ?? Theme.of(context).primaryColor,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
