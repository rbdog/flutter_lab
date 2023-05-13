import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'state.g.dart';

/// 季節
enum Season {
  spring, // 春
  summer, // 夏
  autumn, // 秋
  winter, // 冬
}

/// 季節を管理するノティファイヤー (& 自動で作られるプロバイダー)
@riverpod
class SeasonNotifier extends _$SeasonNotifier {
  @override
  Season build() {
    return Season.spring;
  }

  /// 季節を変更する
  void updateState(Season season) {
    state = season;
  }
}
