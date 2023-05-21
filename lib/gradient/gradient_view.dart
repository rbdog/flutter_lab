import 'package:flutter/material.dart';

class GradientView extends StatelessWidget {
  const GradientView({
    required this.colors,
    super.key,
    this.child,
  });

  final List<Color> colors;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
          colors: colors,
        ),
      ),
      child: child,
    );
  }
}
