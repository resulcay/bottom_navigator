import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: NavigatorWidget(),
    );
  }
}

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({Key? key}) : super(key: key);

  @override
  _NavigatorWidgetState createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  int currentIndex = 0;
  final screens = [
    const Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        'Feed',
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        'Chat',
        style: TextStyle(fontSize: 60),
      ),
    ),
    const Center(
      child: Text(
        'Profile',
        style: TextStyle(fontSize: 60),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator Practise'),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 40,
        onTap: (valueOnMy) => setState(() => currentIndex = valueOnMy),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Feed',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.green),
        ],
      ),
    );
  }
}
