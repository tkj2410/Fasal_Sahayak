import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

class BottomNavBar extends StatefulWidget {
  final ValueChanged<int> onTabChanged;

  const BottomNavBar({Key? key, required this.onTabChanged}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF32D7A1),
      elevation: 28,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      currentIndex: currentIndex,
      //selectedItemColor: Colors.amber[800],
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
        widget.onTabChanged(index);
      },
      items: const [

        BottomNavigationBarItem(
          //title: Text('Favorites'),
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          //title: Text('Music'),
          label: 'Query',
          icon: Icon(Icons.chat),
        ),
        BottomNavigationBarItem(
          // title: Text('Places'),
          label: 'Profile',
          icon: Icon(Icons.account_circle_outlined),
        ),
      ],

    );
  }

}