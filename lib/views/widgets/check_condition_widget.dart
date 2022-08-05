import 'package:flutter/material.dart';

class CheckCondition extends StatelessWidget {
  const CheckCondition({
    Key? key,
    required this.exception,
    this.ifFalse,
    this.ifTrue,
  }) : super(key: key);

  final bool exception;
  final Widget? ifFalse;
  final Widget? ifTrue;

  @override
  Widget build(BuildContext context) {
    if (exception) {
      return ifTrue ?? const SizedBox.shrink();
    } else {
      return ifFalse ?? const SizedBox.shrink();
    }
  }
}
