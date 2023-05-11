import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BorderedField extends HookWidget {
  const BorderedField({
    super.key,
    required this.value,
    required this.onChanged,
    this.radius = 2,
    this.borderWidth = 2,
    this.focusBorderWidth = 2,
    this.borderColor = Colors.black,
    this.focusBorderColor = Colors.blue,
    this.color = Colors.white,
    this.style = const TextStyle(color: Colors.black),
  });

  final String value;
  final void Function(String value) onChanged;
  final double radius;
  final double borderWidth;
  final double focusBorderWidth;
  final Color borderColor;
  final Color focusBorderColor;
  final Color color;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: value);
    useEffect(() {
      if (controller.text != value) {
        controller.text = value;
      }
      return null;
    });

    return TextField(
      style: style,
      cursorColor: style.color,
      decoration: InputDecoration(
        fillColor: color,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
          borderSide: BorderSide(
            color: focusBorderColor,
            width: focusBorderWidth,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
          borderSide: BorderSide(
            color: borderColor,
            width: borderWidth,
          ),
        ),
      ),
      onChanged: onChanged,
      controller: controller,
    );
  }
}
