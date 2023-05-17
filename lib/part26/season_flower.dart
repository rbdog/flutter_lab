import 'package:flutter/material.dart';
import 'package:flutter_lab/part26/season.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 季節の花
class SeasonFlower extends ConsumerWidget {
  const SeasonFlower({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final season = ref.watch(seasonNotifierProvider);

    // 画像
    return Image.asset(
      switch (season) {
        Season.spring => 'images/cherry-blossom.png',
        Season.summer => 'images/sunflower.png',
        Season.autumn => 'images/maple.png',
        Season.winter => 'images/narcissus.png',
      },
    );
  }
}
