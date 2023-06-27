import 'package:flutter/material.dart';

class CommonNavigator extends StatelessWidget {
  const CommonNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Go to Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search offence',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Contact',
      ),
    ]);
  }
}
