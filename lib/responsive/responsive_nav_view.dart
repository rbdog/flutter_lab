import 'package:flutter/material.dart';
import 'package:flutter_lab/responsive/rail_base_view.dart';
import 'package:flutter_lab/responsive/tab_base_view.dart';

enum NavLayout {
  tab,
  rail,
  menu,
}

class NavBarStyle {
  const NavBarStyle({
    required this.barColor,
    required this.itemColor,
    required this.barSize,
    required this.iconSize,
    required this.labelSize,
  });
  final Color barColor;
  final Color itemColor;
  final double barSize;
  final double iconSize;
  final double labelSize;
}

class NavPage {
  const NavPage({
    required this.label,
    required this.icon,
    required this.body,
  });
  final IconData Function() icon;
  final Widget Function() body;
  final String label;
}

/// レスポンシブなベース画面
class ResponsiveNavView<SizeClass> extends StatelessWidget {
  const ResponsiveNavView._({
    super.key,
    required this.layout,
    required this.routes,
    required this.barStyle,
  });

  factory ResponsiveNavView({
    Key? key,
    required NavLayout layout,
    required List<NavPage> routes,
    Color barColor = Colors.orange,
    double barSize = 120,
    double iconSize = 50,
    double labelSize = 20,
    Color itemColor = Colors.white,
  }) {
    final barStyle = NavBarStyle(
      barColor: barColor,
      itemColor: itemColor,
      barSize: barSize,
      iconSize: iconSize,
      labelSize: labelSize,
    );
    return ResponsiveNavView._(
      key: key,
      barStyle: barStyle,
      layout: layout,
      routes: routes,
    );
  }

  final List<NavPage> routes;
  final NavLayout layout;
  final NavBarStyle barStyle;

  @override
  Widget build(BuildContext context) {
    late final Widget widget;
    switch (layout) {
      case NavLayout.tab:
        widget = UiTabBaseView(
          barStyle: barStyle,
          routes: routes,
        );
        break;
      case NavLayout.rail:
        widget = UiRailBaseView(
          barStyle: barStyle,
          routes: routes,
          isLargeMode: false,
        );
        break;
      case NavLayout.menu:
        widget = UiRailBaseView(
          barStyle: barStyle,
          routes: routes,
          isLargeMode: true,
        );
        break;
    }
    return widget;
  }
}
