import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '测试程序',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // 当前选中的页面索引

  // 页面列表
  static const List<Widget> _pages = <Widget>[
    PageA(),
    PageB(),
    PageC(),
    PageD(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'B',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'C',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label),
            label: 'D',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

// 页面A
class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPage('A');
  }
}

// 页面B
class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPage('B');
  }
}

// 页面C
class PageC extends StatelessWidget {
  const PageC({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPage('C');
  }
}

// 页面D
class PageD extends StatelessWidget {
  const PageD({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildPage('D');
  }
}

// 通用页面构建方法
Widget _buildPage(String title) {
  return Scaffold(
    appBar: AppBar(
      title: Text('选项 $title'),
    ),
    body: ListView.builder(
      itemCount: 1, // 25行
      itemBuilder: (context, index) {
        return const ListTile(
          title: Text("亲爱的亲爱的朋友你好(@^0^@)，本程序是一个测试项目，日后会开发其他各种好van的东西，同时我们团队也广纳贤才，无论你是会编程，绘画，编曲，设计等等，甚至你只是对某方面感兴趣，还没开始学习，都可以来加入我们！ヾ(≧▽≦*)o，和我们一起开发项目，让想象变成现实。\n问题解答\n1开发方向是什么\n我们主要开发一些安卓移动端和Windows端的东西（以游戏和工具为主，同时未来会考虑制作网站）\n2为什么开发进度比较慢\n因为我们采取自由制作制度，每位创作者的制作时限都很长，再加上我们各方面的能力以及空闲的时间都有限，因此开发进度普遍较慢\n3我可以加入吗？\n当然可以！项目支持者联系方式：\n微信：xiaohuhulaila\n邮箱：xiaohuhulaila@outlook.com"),
        );
      },
    ),
  );
}