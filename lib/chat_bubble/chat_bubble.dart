import 'package:flutter/material.dart';

/*

+--------------+
|              |
|     body     |
|              |
+----+   +-----+
      ＼／ tail

*/

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    this.radius = 8.0,
    this.width,
    this.height,
    this.padding = EdgeInsets.zero,
    this.borderWidth = 5,
    this.tailWidth = 30,
    this.tailHeight = 13,
    this.tailRadius = 5,
    this.child,
    this.color = Colors.white,
    this.borderColor = Colors.blue,
  });

  final double? width;
  final double? height;
  final EdgeInsets padding;
  final double radius;
  final double tailWidth;
  final double tailHeight;
  final double tailRadius;
  final Widget? child;
  final Color color;
  final double borderWidth;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.only(bottom: tailHeight),
      decoration: ShapeDecoration(
        color: color,
        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(0, borderWidth),
            blurRadius: 3,
          )
        ],
        shape: ChatBubbleBorder(
          borderWidth: borderWidth,
          tailHeight: tailHeight,
          color: color,
          tailWidth: tailWidth,
          borderColor: borderColor,
          radius: radius,
          tailRadius: tailRadius,
        ),
      ),
      child: Container(
        padding: padding,
        child: child,
      ),
    );
  }
}

/// Border
class ChatBubbleBorder extends ShapeBorder {
  const ChatBubbleBorder({
    required this.radius,
    required this.borderWidth,
    required this.tailWidth,
    required this.tailHeight,
    required this.tailRadius,
    required this.color,
    required this.borderColor,
  });

  final double radius;
  final double borderWidth;
  final double tailWidth;
  final double tailHeight;
  final double tailRadius;
  final Color color;
  final Color borderColor;

  @override
  EdgeInsetsGeometry get dimensions {
    return EdgeInsets.zero;
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final bodyRadius = radius;
    final tailLTLocalX = (rect.width - tailWidth) / 2;
    final tailLBLocalX = (rect.width - tailRadius) / 2;
    final bodyBottomY = rect.bottom - tailHeight;

    // Points
    final bodyLT0 = Offset(rect.left, rect.top + bodyRadius);
    final bodyLT1 = Offset(rect.left + bodyRadius, rect.top);
    final bodyLB0 = Offset(rect.left + bodyRadius, bodyBottomY);
    final bodyLB1 = Offset(rect.left, bodyBottomY - bodyRadius);
    final tailLT = Offset(rect.left + tailLTLocalX, bodyBottomY);
    final tailLB = Offset(rect.left + tailLBLocalX, rect.bottom);
    final tailRB = Offset(rect.right - tailLBLocalX, rect.bottom);
    final tailRT = Offset(rect.right - tailLTLocalX, bodyBottomY);
    final bodyRB0 = Offset(rect.right, bodyBottomY - bodyRadius);
    final bodyRB1 = Offset(rect.right - bodyRadius, bodyBottomY);
    final bodyRT0 = Offset(rect.right - bodyRadius, rect.top);
    final bodyRT1 = Offset(rect.right, rect.top + bodyRadius);

    return Path()
      // BEGIN: body LT 0
      ..moveTo(bodyLT0.dx, bodyLT0.dy)
      // body LT 1
      ..arcToPoint(
        bodyLT1,
        radius: Radius.circular(bodyRadius),
      )
      // body RT 0
      ..lineTo(bodyRT0.dx, bodyRT0.dy)
      // body RT 1
      ..arcToPoint(
        bodyRT1,
        radius: Radius.circular(bodyRadius),
      )
      // body RB 0
      ..lineTo(bodyRB0.dx, bodyRB0.dy)
      // body RB 1
      ..arcToPoint(
        bodyRB1,
        radius: Radius.circular(bodyRadius),
      )
      // tail RT
      ..lineTo(tailRT.dx, tailRT.dy)
      // tail RB
      ..lineTo(tailRB.dx, tailRB.dy)
      // tail LB
      ..arcToPoint(
        tailLB,
        radius: Radius.circular(tailRadius),
      )
      // tail LT
      ..lineTo(tailLT.dx, tailLT.dy)
      // body LB 0
      ..lineTo(bodyLB0.dx, bodyLB0.dy)
      // body LB 1
      ..arcToPoint(
        Offset(bodyLB1.dx, bodyLB1.dy),
        radius: Radius.circular(bodyRadius),
      )
      // END: body LT 0
      ..lineTo(bodyLT0.dx, bodyLT0.dy)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final path = getOuterPath(rect);
    Paint paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;
    canvas.drawPath(path, paint);
  }

  @override
  ShapeBorder scale(double t) => this;
}
