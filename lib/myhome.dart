
import 'package:fasal_sahayak/Dashboard.dart';
import 'package:fasal_sahayak/Post_page.dart';
import 'package:fasal_sahayak/Query_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:fasal_sahayak/Bottom_NavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fasal_sahayak/Signup_page.dart';
import 'package:fasal_sahayak/Bottom_NavBar.dart';
class MyDashBoard extends StatefulWidget {

  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Custom Animated Bottom Navigation Bar"),
          backgroundColor: Colors.green[200],
        ),
        body: getBody(),
        bottomNavigationBar: _buildBottomBar()
    );
  }

  //Bottom NavBar
  Widget _buildBottomBar(){
    print(_currentIndex);
    return CustomAnimatedBottomBar(
      containerHeight: 30,
      backgroundColor: const Color(0xFF32D7A1),
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius:30,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.home),
          title: const Text('Home'),
          //activeColor: Color(0xFF32D7A1),
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.message_outlined),
          title: const Text('Query'),
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.account_circle_outlined),
          title: const Text(
            'Profile ',
          ),
          activeColor: Colors.white,
          inactiveColor: Colors.white,
          textAlign: TextAlign.center,
        ),

      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      const Dashboard(title: ''),
      const QueryPage(title: '',),
      const PostPage(title: '',),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}