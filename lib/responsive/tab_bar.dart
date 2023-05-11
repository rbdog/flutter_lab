import 'package:flutter/material.dart';

class UiTabBar extends StatelessWidget {
  const UiTabBar({
    super.key,
    required this.selectedIndex,
    required this.color,
    required this.height,
    required this.onPressed,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int selectedIndex;
  final Color color;
  final double height;
  final void Function(int index) onPressed;
  final int itemCount;
  final Widget Function(int index) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final layoutBuilder = LayoutBuilder(
      builder: (context, constraints) {
        final itemWidth = constraints.maxWidth / itemCount;

        final row = Row(
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(
            itemCount,
            (i) {
              final itemChild = itemBuilder(i);

              return Container(
                width: itemWidth,
                height: height,
                alignment: Alignment.center,
                child: IconButton(
                  iconSize: height,
                  onPressed: () => onPressed(i),
                  icon: itemChild,
                ),
              );
            },
          ),
        );

        return row;
      },
    );

    return Material(
      color: color,
      elevation: 20,
      child: layoutBuilder,
    );
  }
}
