import 'dart:io';

import 'package:flutter/foundation.dart';

Future<String> readFile(String path) async {
  String text = 'No Content';
  final File file = File(path);
  text = await file.readAsString();
  return text;
}

///
/// fullText の中から right と left に挟まれた文字列を全て抜き出す
///
List<String> hitBetween(String fullText, String right, String left) {
  // ignore: prefer_interpolation_to_compose_strings
  final between = RegExp(r'' + right + '.+?' + left);
  final matches = between.allMatches(fullText).map((e) => e.group(0)).toList();
  final removed = matches.map((e) {
    if (e == null) return '';
    final startIndex = right.length;
    final endIndex = e.length - left.length;
    return e.substring(startIndex, endIndex);
  }).toList();
  return removed;
}

///
/// 特定のコメント行を全て集める // #
/// $ をエスケープするだけだと、正規表現に入ったときに作用してしまうので、エスケープ文字も一緒に送る \\\$
/// # の場合は正規表現に関係ないからそのまま使える
///
List<String> hitDocComments(String code, {String commentOut = '// # '}) {
  // ignore: prefer_interpolation_to_compose_strings
  final commentLine = RegExp(r'' + commentOut + '.+?\n');
  final commentLines =
      commentLine.allMatches(code).map((e) => e.group(0)).toList();
  final removed = commentLines.map((e) {
    if (e == null) return '';
    final startIndex = commentOut.length;
    final endIndex = e.length;
    return e.substring(startIndex, endIndex);
  }).toList();
  return removed;
}

///
/// ファイルの書き出し
///
Future<void> outputFile(
  String path,
  String content,
  bool overWrite,
) async {
  var file = File(path);
  if (await file.exists()) {
    // すでに存在する場合
    if (overWrite) {
      // 上書き指定されていたとき
      // 削除
      await file.delete();
    }
  }
  file = await file.writeAsString(content);
  await file.create(recursive: true);
}

///
/// ドキュメントコメントをファイル出力
///
Future<void> outputDocComments(
  List<String> comments,
  String path,
) async {
  var text = '';
  for (var comment in comments) {
    if (comment.startsWith('NEW ')) {
      // 新規作成
      if (text.isNotEmpty) {
        // すでに書き込みがあるとき
        // End処理
        text += '```\n';
      }
      // タイトルを書き込み
      final title = comment.substring('NEW'.length, comment.length);
      text += '# $title\n';
      // Start処理
      text += '```mermaid\ngraph TB\n';
    } else {
      // 新規作成以外
      // そのまま追加
      text += comment;
    }
  }
  // End処理
  text += '```\n';
  await outputFile(path, text, true);
}

main() async {
  final code = await readFile('./lib/comment_chart/main.dart');
  final comments = hitDocComments(code);
  await outputDocComments(comments, './docs/sample_output.md');
}

test() {
  const withTags = '<start>content1<end><start>content2<end>';
  const right = '<start>';
  const left = '<end>';
  final mathes = hitBetween(withTags, right, left);
  debugPrint(mathes.toString());
}
