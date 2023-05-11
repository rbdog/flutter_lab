import 'package:flutter/material.dart';

class UiRail extends StatelessWidget {
  const UiRail({
    super.key,
    this.isMenu = false,
    required this.selectedIndex,
    required this.barColor,
    required this.itemColor,
    required this.itemCount,
    required this.iconSize,
    required this.barSize,
    required this.itemBuilder,
    required this.onPressed,
  });

  final bool isMenu;
  final Color barColor;
  final Color itemColor;
  final double iconSize;
  final int selectedIndex;
  final int itemCount;
  final double barSize;
  final NavigationRailDestination Function(int index) itemBuilder;
  final void Function(int index) onPressed;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      backgroundColor: barColor,
      labelType:
          isMenu ? NavigationRailLabelType.none : NavigationRailLabelType.all,
      extended: isMenu,
      elevation: 10,
      selectedIndex: selectedIndex,
      selectedIconTheme: IconThemeData(
        color: barColor,
        size: iconSize,
      ),
      selectedLabelTextStyle: TextStyle(
        color: itemColor,
      ),
      unselectedIconTheme: IconThemeData(
        color: itemColor,
        size: iconSize,
      ),
      unselectedLabelTextStyle: TextStyle(
        color: itemColor,
      ),
      onDestinationSelected: (i) => onPressed(i),
      minWidth: barSize,
      destinations: List.generate(
        itemCount,
        (i) => itemBuilder(i),
      ),
    );
  }
}
