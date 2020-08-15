import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../globalValues.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    key.currentState.setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          title: Text('News'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.view_day),
          title: Text('Feed'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.equalizer),
          title: Text('Leaderboard'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active),
          title: Text('Notifications'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Profile'),
        ),
      ],
      currentIndex: selectedIndex,
      onTap: _onItemTapped,
      showSelectedLabels: false,
    );
  }
}
