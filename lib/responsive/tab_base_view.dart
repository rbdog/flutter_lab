import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_lab/responsive/responsive_nav_view.dart';
import 'package:flutter_lab/responsive/tab_bar.dart';

class UiTabBaseView extends HookWidget {
  const UiTabBaseView({
    super.key,
    required this.barStyle,
    required this.routes,
  });

  final NavBarStyle barStyle;
  final List<NavPage> routes;

  @override
  Widget build(BuildContext context) {
    final index = useState(0);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: routes[index.value].body(),
      bottomNavigationBar: UiTabBar(
        height: barStyle.barSize,
        color: barStyle.barColor,
        selectedIndex: index.value,
        onPressed: (i) {
          index.value = i;
        },
        itemCount: routes.length,
        itemBuilder: (i) {
          final icon = routes[i].icon();
          final label = routes[i].label;
          final isSelected = i == index.value;
          final iconColor = isSelected ? barStyle.barColor : barStyle.itemColor;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                decoration: isSelected
                    ? ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: barStyle.itemColor,
                      )
                    : null,
                height: barStyle.iconSize + barStyle.labelSize,
                width: barStyle.iconSize + barStyle.labelSize,
                child: Icon(
                  icon,
                  size: barStyle.iconSize,
                  color: iconColor,
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: barStyle.labelSize,
                  color: barStyle.itemColor,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
