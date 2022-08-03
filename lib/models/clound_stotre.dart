import 'package:flutter/material.dart';

class CloudStorage {
  final String svgSrc, title, totalStorage;
  final int numOfFiels;
  final double percentage;
  final Color color;

  CloudStorage({
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
    required this.numOfFiels,
    required this.percentage,
    required this.color,
  });

  CloudStorage coppyWidth({
    svgSrc,
    title,
    totalStorage,
    numOfFiels,
    percentage,
    color,
  }) {
    return CloudStorage(
      color: svgSrc ?? this.svgSrc,
      numOfFiels: numOfFiels ?? this.numOfFiels,
      percentage: percentage ?? this.percentage,
      svgSrc: svgSrc ?? this.svgSrc,
      title: title ?? this.title,
      totalStorage: totalStorage ?? this.totalStorage,
    );
  }
}
