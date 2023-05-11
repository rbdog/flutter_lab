import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ボードに配置できるオブジェクト
class BoardObject {
  const BoardObject({
    required this.id,
    required this.x,
    required this.y,
    required this.builder,
  });
  final String id;
  final double x;
  final double y;
  final Widget Function() builder;
}

/// ボードView
class BoardView extends ConsumerWidget {
  const BoardView({
    super.key,
    required this.objects,
    this.onDrop,
  });

  final List<BoardObject> objects;
  final void Function(BoardObject object, List<BoardObject> others)? onDrop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DragTarget(
      builder: (context, candidateData, rejectedData) {
        // ドロップ可能なエリア
        return Stack(
          fit: StackFit.expand,
          children: List<Positioned>.generate(
            objects.length,
            (index) {
              final object = objects[index];
              final child = object.builder();
              return Positioned(
                top: object.y,
                left: object.x,
                child: Draggable(
                  data: object.id,
                  feedback: child,
                  childWhenDragging: const SizedBox.shrink(),
                  child: child,
                ),
              );
            },
          ),
        );
      },
      onAcceptWithDetails: (DragTargetDetails<String> details) {
        // ドロップを受け取ったとき
        // グローバル座標からローカル座標へ変換
        final RenderBox box = context.findRenderObject() as RenderBox;
        final localOffset = box.globalToLocal(details.offset);

        final id = details.data;
        final oldObject = objects.firstWhere((e) => e.id == id);
        final newObject = BoardObject(
          id: oldObject.id,
          x: localOffset.dx,
          y: localOffset.dy,
          builder: oldObject.builder,
        );
        final others = List.of(objects);
        others.removeWhere((e) => e.id == oldObject.id);

        onDrop?.call(newObject, others);
      },
    );
  }
}
