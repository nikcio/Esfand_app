import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          title: Text('a'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_day),
          title: Text('a'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.equalizer),
          title: Text('a'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active),
          title: Text('a'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('a'),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      showSelectedLabels: false,
    );
  }
}