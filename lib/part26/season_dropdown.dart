import 'package:flutter/material.dart';
import 'package:flutter_lab/part26/season.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 季節を選択するドロップダウン
class SeasonDropdown extends ConsumerWidget {
  const SeasonDropdown({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// 選択中の季節
    final season = ref.watch(seasonNotifierProvider);

    /// 選択肢
    const items = [
      DropdownMenuItem(
        value: Season.spring,
        child: Text('ハル'),
      ),
      DropdownMenuItem(
        value: Season.summer,
        child: Text('ナツ'),
      ),
      DropdownMenuItem(
        value: Season.autumn,
        child: Text('アキ'),
      ),
      DropdownMenuItem(
        value: Season.winter,
        child: Text('フユ'),
      ),
    ];

    // ドロップダウンボタン
    return DropdownButton(
      value: season,
      items: items,
      onChanged: (newSeason) {
        // ノティファイヤー
        final notifier = ref.read(seasonNotifierProvider.notifier);
        notifier.updateSeason(newSeason!);
      },
      focusColor: Colors.transparent,
    );
  }
}
