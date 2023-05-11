import 'package:flutter/material.dart';

class NavbarItem {
  const NavbarItem({
    required this.child,
  });

  final Widget child;
}

class Navbar {
  const Navbar({
    required this.items,
    this.height = 60,
    this.backgroundColor = Colors.white,
    this.selectedItemColor = Colors.blue,
    this.unselectedItemColor = Colors.grey,
  });

  final List<NavbarItem> items;
  final double height;
  final Color backgroundColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
}

class NavRootView extends StatefulWidget {
  const NavRootView({
    super.key,
    required this.navbar,
    required this.pageBuilder,
    this.onChanged,
    this.initialIndex = 0,
  });

  final Navbar navbar;
  final Widget Function(int index) pageBuilder;
  final void Function(int index)? onChanged;
  final int initialIndex;

  @override
  State<NavRootView> createState() => _NavRootViewState();
}

class _NavRootViewState extends State<NavRootView>
    with TickerProviderStateMixin {
  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: widget.initialIndex);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pageView = PageView.builder(
      controller: controller,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.navbar.items.length,
      itemBuilder: (context, index) {
        return widget.pageBuilder(index);
      },
    );

    return Column(
      children: [
        Expanded(child: pageView),
        LayoutBuilder(builder: (context, constraints) {
          return _NavbarView(
            controller: controller,
            itemWidth: constraints.maxWidth / widget.navbar.items.length,
            navBar: widget.navbar,
            onChanged: widget.onChanged,
          );
        }),
      ],
    );
  }
}

class _NavbarView extends StatefulWidget {
  const _NavbarView({
    required this.controller,
    required this.navBar,
    required this.itemWidth,
    this.onChanged,
  });

  final PageController controller;
  final Navbar navBar;
  final double itemWidth;
  final void Function(int index)? onChanged;

  @override
  State<_NavbarView> createState() => _NavbarViewState();
}

class _NavbarViewState extends State<_NavbarView> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.controller.initialPage;
  }

  @override
  Widget build(BuildContext context) {
    final itemWidth = widget.itemWidth;
    final itemHeight = widget.navBar.height;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(
        widget.navBar.items.length,
        (index) {
          final isSelected = index == selectedIndex;
          return SizedBox(
            width: itemWidth,
            height: itemHeight,
            child: TextButton(
              onPressed: () {
                widget.controller.jumpToPage(index);
                widget.onChanged?.call(index);
                setState(() {
                  selectedIndex = index;
                });
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: isSelected
                    ? widget.navBar.selectedItemColor
                    : widget.navBar.unselectedItemColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
              ),
              child: widget.navBar.items[index].child,
            ),
          );
        },
      ),
    );
  }
}
