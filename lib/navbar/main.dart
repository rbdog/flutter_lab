import 'package:flutter/material.dart';
import 'package:flutter_lab/navbar/navbar.dart';
import 'package:flutter_lab/navbar/page_a.dart';
import 'package:flutter_lab/navbar/page_b.dart';
import 'package:flutter_lab/navbar/page_c.dart';

/* 
    1. まずは nabvar.dart を作ります

      こちらからコピペできます (全てまるごとコピペで大丈夫です)
      https://github.com/rbdog/flutter_note/blob/main/lib/navbar/navbar.dart
*/

//
//
//

/* 
    2. navbar.dart を import します
      
      下のコードは自分のアプリに合わせて変えてください
*/

// import 'package:flutter_lab/navbar/navbar.dart';

//
//
//

/* 
    3. 自分で作った画面たちを import しておきます
   
      下のコードは自分のアプリに合わせて変えてください
*/

//
//
//

/* 
    4. アイテムたち や ナビバー を作ってアプリを完成させます
   
      下のコードは自分のアプリに合わせて変えてください
*/

void main() {
  // 画面たち
  const pages = [
    PageA(), // 自分で作った画面A
    PageB(), // 自分で作った画面B
    PageC(), // 自分で作った画面C
  ];

  // アイテムたち
  final items = [
    // アイテムA
    const NavbarItem(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.person), // 人のアイコン
          Text('アイテムA'),
        ],
      ),
    ),

    // アイテムB
    const NavbarItem(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.home), // 家のアイコン
          Text('アイテムB'),
        ],
      ),
    ),

    // アイテムC
    const NavbarItem(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.settings), // 設定のアイコン
          Text('アイテムC'),
        ],
      ),
    ),
  ];

  // ナビバー
  final navbar = Navbar(
    items: items, // アイテムたち
    height: 60, // バーの高さ
    backgroundColor: Colors.white, // バーの色
    selectedItemColor: Colors.blue, // 選択されたアイテムの色
    unselectedItemColor: Colors.grey, // その他のアイテムの色
  );

  // ナビバーと 画面たちを合わせた ルート画面
  final root = NavRootView(
    navbar: navbar, // ナビバー
    pageBuilder: (index) => pages[index], // インデックスに合わせて画面を変える
    initialIndex: 1, // インデックス 1 でアプリ開始
  );

  // Scaffold
  final scaffold = Scaffold(body: root);

  // アプリ
  final app = MaterialApp(home: scaffold);
  runApp(app);
}
