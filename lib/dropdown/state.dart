import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

enum Season {
  spring,
  summer,
  autumn,
  winter,
}

class SeasonText extends StatelessWidget {
  const SeasonText(
    this.season, {
    super.key,
  });

  final Season season;

  @override
  Widget build(BuildContext context) {
    return Text(
      switch (season) {
        Season.spring => 'ハル',
        Season.summer => 'ナツ',
        Season.autumn => 'アキ',
        Season.winter => 'フユ',
      },
    );
  }
}

@riverpod
class SeasonNotifier extends _$SeasonNotifier {
  @override
  Season build() {
    return Season.spring;
  }

  void updateState(Season season) {
    state = season;
  }
}

@riverpod
class IndexNotifier extends _$IndexNotifier {
  @override
  int build() {
    return 0;
  }

  void updateState(int index) {
    state = index;
  }
}
