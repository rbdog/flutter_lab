import 'package:flutter/material.dart';

class MyPopupButton extends StatelessWidget {
  const MyPopupButton({
    super.key,
    this.buttonColor = Colors.white,
    this.menuColor = Colors.white,
    required this.itemCount,
    required this.itemBuilder,
    required this.child,
    required this.onPressItem,
    this.menuWidth = 200,
    this.cornerRadius = 10,
    this.elevation = 8,
    this.menuElevation = 8,
  });

  final Color buttonColor;
  final Color menuColor;
  final int itemCount;
  final Widget child;
  final Widget Function(int index) itemBuilder;
  final void Function(int index) onPressItem;
  final double cornerRadius;
  final double menuWidth;
  final double elevation;
  final double menuElevation;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(cornerRadius),
      color: buttonColor,
      elevation: elevation,
      child: PopupMenuButton(
        color: menuColor,
        elevation: menuElevation,
        tooltip: '',
        itemBuilder: (_) => List.generate(
          itemCount,
          (i) => PopupMenuItem(
            value: i,
            child: SizedBox(
              width: menuWidth,
              child: itemBuilder(i),
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: child,
        ),
        onSelected: (i) => onPressItem(i),
      ),
    );
  }
}
