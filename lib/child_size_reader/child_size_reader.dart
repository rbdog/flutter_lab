import 'package:flutter/material.dart';

///
/// child のサイズを取得するための Widget
///
class ChildSizeReader extends StatefulWidget {
  const ChildSizeReader({
    super.key,
    required this.onRead,
    required this.child,
  });
  final void Function(double height) onRead;
  final Widget child;

  @override
  State<ChildSizeReader> createState() => _ChildSizeReaderState();
}

class _ChildSizeReaderState extends State<ChildSizeReader> {
  double? childHeight;
  @override
  Widget build(BuildContext context) {
    // * get child height by using Stack
    return Stack(
      alignment: Alignment.center,
      children: [
        widget.child,
        Positioned.fill(
          child: LayoutBuilder(
            builder: (context, constraints) {
              if (childHeight != constraints.maxHeight) {
                WidgetsBinding.instance.addPostFrameCallback(
                  (_) {
                    widget.onRead(constraints.maxHeight);
                    setState(() {
                      childHeight = constraints.maxHeight;
                    });
                  },
                );
              }
              return Container();
            },
          ),
        ),
      ],
    );
  }
}
