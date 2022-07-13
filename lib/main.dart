import 'package:flutter/material.dart';

import 'home_page.dart';

void main(List<String> args) {
  runApp(const FlutterBeginner());
}

class FlutterBeginner extends StatelessWidget {
  const FlutterBeginner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter training for Beginner'),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FloatingActionButton pressed');
        },
        child: const Icon(Icons.add_a_photo),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'settings')
        ],
        onDestinationSelected: (int index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
        selectedIndex: _currentIndex,
      ),
    );
  }
}
