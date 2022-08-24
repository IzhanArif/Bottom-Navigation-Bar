import 'package:bottomnavigationbar/pages/page1.dart';
import 'package:bottomnavigationbar/pages/page2.dart';
import 'package:bottomnavigationbar/pages/page3.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selecteditem = 0;
  final _pages = [const FirstPage(), const SecondPage(), const ThirdPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation Bar Example"),
      ),
      body: Center(child: (_pages[_selecteditem])),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.photo), label: ("Photos")),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: ("Calling")),
          ],
          currentIndex: _selecteditem,
          onTap: (index) {
            setState(() {
              _selecteditem = index;
            });
          }),
    );
  }
}
