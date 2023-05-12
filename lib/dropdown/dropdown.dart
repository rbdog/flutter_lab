import 'package:flutter/material.dart';

class MyDropdownButton extends StatelessWidget {
  const MyDropdownButton({
    super.key,
    this.buttonColor = Colors.white,
    this.dropdownColor = Colors.white,
    required this.itemCount,
    required this.itemBuilder,
    required this.child,
    required this.onPressItem,
    this.cornerRadius = 10,
    this.elevation = 8,
    this.dropdownElevation = 8,
  });

  final Color buttonColor;
  final Color dropdownColor;
  final int itemCount;
  final Widget child;
  final Widget Function(int index) itemBuilder;
  final void Function(int index) onPressItem;
  final double cornerRadius;
  final double elevation;

  /// only allowed 0, 1, 2, 3, 4, 6, 8, 9, 12, 16, and 24.
  final int dropdownElevation;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(cornerRadius),
      color: buttonColor,
      elevation: elevation,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.center,
            child: child,
          ),
          DropdownButton(
            alignment: Alignment.center,
            focusColor: Colors.transparent,
            dropdownColor: dropdownColor,
            value: 0,
            underline: const SizedBox.shrink(),
            elevation: dropdownElevation,
            icon: const SizedBox.shrink(),
            isExpanded: true,
            onChanged: (i) => onPressItem(i!),
            selectedItemBuilder: (_) => List.generate(
              itemCount,
              (i) => const SizedBox.shrink(),
            ),
            items: List.generate(
              itemCount,
              (i) => DropdownMenuItem(
                alignment: Alignment.center,
                value: i,
                child: itemBuilder(i),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
