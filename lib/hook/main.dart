import 'package:flutter/material.dart';
import 'package:flutter_lab/hook/my_widget_1.dart';
import 'package:flutter_lab/hook/my_widget_2.dart';
import 'package:flutter_lab/hook/my_widget_3.dart';
import 'package:flutter_lab/hook/my_widget_4.dart';

void main() {
  const app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/1': (context) => const MyPage(
              title: 'useState()',
              child: MyWidget1(),
            ),
        '/2': (context) => const MyPage(
              title: 'useEffect()',
              child: MyWidget2(),
            ),
        '/3': (context) => const MyPage(
              title: 'useTextEditingController()',
              child: MyWidget3(),
            ),
        '/4': (context) => const MyPage(
              title: 'useMyController()',
              child: MyWidget4(),
            ),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/1');
              },
              child: const Text('1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/2');
              },
              child: const Text('2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/3');
              },
              child: const Text('3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/4');
              },
              child: const Text('4'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: child),
    );
  }
}
