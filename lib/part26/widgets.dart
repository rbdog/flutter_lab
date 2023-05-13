import 'package:flutter/material.dart';
import 'package:flutter_lab/dropdown/state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 季節ごとの時間帯
class SeasonTime extends ConsumerWidget {
  const SeasonTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final season = ref.watch(seasonNotifierProvider);
    return Text(
      switch (season) {
        Season.spring => 'あけぼの',
        Season.summer => 'よる',
        Season.autumn => 'ゆうぐれ',
        Season.winter => 'つとめて',
      },
    );
  }
}

/// 季節の花
class SeasonFlower extends ConsumerWidget {
  const SeasonFlower({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final season = ref.watch(seasonNotifierProvider);
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
