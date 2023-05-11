import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/responsive/rail.dart';
import 'package:flutter_lab/responsive/responsive_nav_view.dart';

class UiRailBaseView extends HookWidget {
  const UiRailBaseView({
    super.key,
    this.isLargeMode = false,
    required this.barStyle,
    required this.routes,
  });

  final bool isLargeMode;
  final NavBarStyle barStyle;
  final List<NavPage> routes;

  @override
  Widget build(BuildContext context) {
    final index = useState(0);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UiRail(
            iconSize: barStyle.iconSize,
            barSize: barStyle.barSize,
            isMenu: isLargeMode,
            selectedIndex: index.value,
            itemColor: barStyle.itemColor,
            barColor: barStyle.barColor,
            onPressed: (i) => index.value = i,
            itemCount: routes.length,
            itemBuilder: (i) {
              final icon = routes[i].icon();
              final label = routes[i].label;
              return NavigationRailDestination(
                padding: const EdgeInsets.all(0),
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  height: 70,
                  width: 70,
                  child: Icon(icon),
                ),
                selectedIcon: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: barStyle.itemColor,
                  ),
                  height: barStyle.iconSize + barStyle.labelSize,
                  width: barStyle.iconSize + barStyle.labelSize,
                  child: Icon(icon),
                ),
                label: Text(
                  label,
                  style: TextStyle(
                    fontSize: barStyle.labelSize,
                  ),
                ),
              );
            },
          ),
          Expanded(
            child: routes[index.value].body(),
          ),
        ],
      ),
    );
  }
}
