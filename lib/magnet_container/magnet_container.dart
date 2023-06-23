import 'package:flutter/material.dart';
import 'package:flutter_lab/child_size_reader/child_size_reader.dart';

///
///  Top
/// +----------+
/// |          |
/// |  ↑ pull  |
/// |  ■       |
/// |  ↓ pull  |
/// |          |
/// +----------+
///  Bottom
///
class MagnetContainer extends StatefulWidget {
  const MagnetContainer({
    super.key,
    this.autoReset = true,
    this.initialAlign = Alignment.center,
    this.onHitTop,
    this.onHitBottom,
    required this.child,
  });
  final void Function()? onHitTop;
  final void Function()? onHitBottom;
  final bool autoReset;
  final Alignment initialAlign;
  final Widget child;
  @override
  State<MagnetContainer> createState() => _MagnetContainerState();
}

class _MagnetContainerState extends State<MagnetContainer> {
  // Constants
  final top = Alignment.topCenter;
  final bottom = Alignment.bottomCenter;

  // States
  double? _childHeight;
  Duration _duration = Duration.zero;
  Alignment? _align;
  Alignment? _dragStartAlign;
  double? _dragStartGlobalY;

  // Events
  void onReadChildHeight(double height) {
    setState(() {
      _childHeight = height;
    });
  }

  void onDragStart(DragStartDetails details) {
    setState(() {
      _dragStartAlign = _align;
      _dragStartGlobalY = details.globalPosition.dy;
    });
  }

  void onDragUpdate(DragUpdateDetails details, BuildContext context) {
    final maxOffsetY = context.size!.height - _childHeight!;
    final offsetY = details.globalPosition.dy - _dragStartGlobalY!;
    final offsetAlignY = (offsetY / maxOffsetY) * (bottom.y - top.y);
    final currentAlign = _dragStartAlign?.y ?? widget.initialAlign.y;
    final newAlignY = currentAlign + offsetAlignY;
    setState(() {
      _align = Alignment(Alignment.center.x, newAlignY);
    });
  }

  void onDragEnd(DragEndDetails details) {
    if (_align == top || _align == bottom) {
      // skip animation
      onEndAnimation();
      return;
    }
    // start animation
    final releasedSpeed = details.velocity.pixelsPerSecond.dy;
    final endAlign = (releasedSpeed <= 0) ? top : bottom;
    final duration = animationDuration(
      releasedSpeed,
      endAlign.y,
    );
    setState(() {
      _duration = duration;
      _align = endAlign;
    });
  }

  void onEndAnimation() {
    if (_duration == Duration.zero) {
      // ドラッグ中なので無視
      return;
    }
    if (_align == top) {
      widget.onHitTop?.call();
    }
    if (_align == bottom) {
      widget.onHitBottom?.call();
    }
    setState(() {
      _align = widget.autoReset ? widget.initialAlign : _align;
      _duration = Duration.zero;
    });
    return;
  }

  /// アニメーション時間を計算する
  ///   - releasedSpeed: 手を離した速さ
  ///   - endAlign: アニメーション終了時の目的地
  Duration animationDuration(double releasedSpeed, double endAlign) {
    const baseDistance = 1.0;
    const baseSpeed = 100;
    const baseDuration = 1000.0;
    const minSpeed = 300;
    const maxSpeed = 2400;
    var duration = baseDuration;
    // the more fast, the more short animation
    final speed = (releasedSpeed.abs().clamp(minSpeed, maxSpeed));
    duration = duration * (baseSpeed / speed);
    // the more closer, the more short animation
    final currentAlign = _align?.y ?? widget.initialAlign.y;
    final distance = (endAlign - currentAlign).abs();
    duration = duration * (distance / baseDistance);
    return Duration(milliseconds: duration.toInt());
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      alignment: _align ?? widget.initialAlign,
      duration: _duration,
      onEnd: onEndAnimation,
      child: GestureDetector(
        onVerticalDragStart: onDragStart,
        onVerticalDragUpdate: (details) => onDragUpdate(details, context),
        onVerticalDragEnd: onDragEnd,
        child: ChildSizeReader(
          onRead: onReadChildHeight,
          child: widget.child,
        ),
      ),
    );
  }
}
