import 'package:flutter/material.dart';
import 'package:flutter_lab/responsive/responsive_nav_view.dart';
import 'package:flutter_lab/responsive/screen_pod.dart';

void main() async {
  const examplePage = ExamplePage();
  const app = MaterialApp(home: examplePage);
  runApp(app);
}

/// 画面サイズクラス
enum ScreenSizeClass {
  phone, // スマホ
  tablet, // タブレット
  desktop; // パソコン
}

/// 画面サイズの設定値
const screenProvider = ScreenProvider(
  designWidth: 390, // iPhone14の幅をデザイン基準にする
  designHeight: 844,
  breakpoints: {
    ScreenSizeClass.phone: 320, // スマホ表示に必要な最低限の幅
    ScreenSizeClass.tablet: 600,
    ScreenSizeClass.desktop: 1000,
  },
);

/// サンプル画面
class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = ScreenRef(context).watch(screenProvider);
    late final NavLayout layout;
    switch (screen.sizeClass) {
      case ScreenSizeClass.phone:
        layout = NavLayout.tab;
        break;
      case ScreenSizeClass.tablet:
        layout = NavLayout.rail;
        break;
      case ScreenSizeClass.desktop:
        layout = NavLayout.menu;
        break;
    }

    return ResponsiveNavView(
      layout: layout,
      routes: [
        NavPage(
          label: 'Home',
          icon: () => Icons.home,
          body: () => const Center(
            child: Text(
              'ホーム画面',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
        NavPage(
          label: 'Search',
          icon: () => Icons.search,
          body: () => const Center(
            child: Text(
              'けんさく画面',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
        NavPage(
          label: 'Share',
          icon: () => Icons.share,
          body: () => const Center(
            child: Text(
              '共有画面',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
        NavPage(
          label: 'Profile',
          icon: () => Icons.person,
          body: () => const Center(
            child: Text(
              'プロフィール画面',
              style: TextStyle(fontSize: 60),
            ),
          ),
        ),
      ],
    );
  }
}
