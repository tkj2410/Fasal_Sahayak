import 'package:fasal_sahayak/Camera_page.dart';
import 'package:fasal_sahayak/Dashboard.dart';
import 'package:fasal_sahayak/Navbar.dart';
import 'package:fasal_sahayak/Post_page.dart';
import 'package:flutter/material.dart';
import 'package:fasal_sahayak/Bottom_NavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fasal_sahayak/Signup_page.dart';

class QueryPage extends StatefulWidget {
  const QueryPage({Key? key, required String title}) : super(key: key);

  @override
  State<QueryPage> createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {
  bool shadowColor = true;
  //int _currentIndex = 1;
  double? scrolledUnderElevation;
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {

       // brightness: isDark ? Brightness.dark : Brightness.light);

    //var height = MediaQuery.of(context).size.height;
    //var width = MediaQuery.of(context).size.width;
    return  Scaffold(

        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFDEDEDE),
        appBar: AppBar(
        actions: [
            Padding(
                padding: const EdgeInsets.only(right: 12,top: 10),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset('Assets/plant icon.jpg')
                ),
              ),
              ],
            title:  Text( "Queries",
              style: GoogleFonts.poppins(
              textStyle:  const TextStyle(
              fontSize: 22.0,
              fontFamily: 'Poppins',
              color:  Color(0xFF32D7A1),
              fontWeight: FontWeight.w600,
              height: 0,
                  ),
                ),
              ),
              elevation: 8,
              scrolledUnderElevation: scrolledUnderElevation,
              shadowColor: const Color(0xFFCEE1DB),
              surfaceTintColor: Colors.transparent,
              foregroundColor: const Color(0xFF32D7A1),
              ),

        //NAV
        /*BottomNavigationBar(
         // type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF32D7A1),
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _selectedIndex,
          //selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,

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
        ),*/
      body:
        ListView(

          children: <Widget>[

//SearchBar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchAnchor(
                  viewBackgroundColor: Colors.white,
                  builder: (BuildContext context, SearchController controller) {
                    return SearchBar(
                      backgroundColor: MaterialStateProperty.resolveWith((states) {
                        // If the button is pressed, return green, otherwise blue
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.white;
                        }
                        return Colors.white;
                      }),
                      controller: controller,
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                          EdgeInsets.symmetric(horizontal: 16.0)),
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                      leading: const Icon(Icons.search),
                      trailing: <Widget>[
                        Tooltip(
                          message: 'Change brightness mode',
                          child: IconButton(
                            //isSelected: isDark,
                            onPressed: () {
                              /*setState(() {
                          isDark = !isDark;
                        });*/
                            },
                            icon: const Icon(Icons.wb_sunny_outlined),
                            selectedIcon: const Icon(Icons.brightness_2_outlined),
                          ),
                        )
                      ],
                    );
                  }, suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
                return List<ListTile>.generate(5, (int index) {
                  final String item = 'item $index';
                  return ListTile(
                    title: Text(item),
                    onTap: () {
                      setState(() {
                        controller.closeView(item);
                      });
                    },
                  );
                });
              }),
            ),

//Post 1
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                selectedColor: const Color(0xFF9BD2BF),
                tileColor: const Color(0xFFFFFFFF),

                  title:
                  Positioned(
                    //right: 18,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: SizedBox(
                          width: 200,
                          height: 300,
                            child: Image.asset('Assets/sample 1.jpg', fit: BoxFit.fill
                            ),
                            ),
                      ),
                        ),

                  subtitle: Container(
                    width: 354,
                    height: 80,
                   // clipBehavior: Clip.antiAlias,
                    //decoration: BoxDecoration(),
                    child: const Stack(
                      children: [
                        Positioned(
                          left: 3,
                          top: 3,
                          child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Icon(Icons.account_circle_sharp,
                            color: Color(0xFF31C48D),)
                          ),
                        ),
                        Positioned(
                          left: 285,
                          top: 7,
                          child: SizedBox(
                            width: 100,
                            height: 25,
                            child: Text.rich(
                              TextSpan(
                                children: [

                                  TextSpan(
                                    text: '4 hours',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),

                                  TextSpan(
                                    text: ' •',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 34,
                          top: 6,
                          child: SizedBox(
                            width: 302,
                            height: 26,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Kishore Lalu',
                                    style: TextStyle(
                                      color: Color(0xFF31C48D),
                                      fontSize: 16,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),

                                  TextSpan(
                                    text: ' •',
                                    style: TextStyle(
                                      color: Color(0xFF050505),
                                      fontSize: 15,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),

                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Color(0xFF050505),
                                      fontSize: 8,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),

                                  TextSpan(
                                    text: 'Assam',
                                    style: TextStyle(
                                      color: Color(0xFF050505),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 32,
                          top:32,
                          child: SizedBox(
                            width: 330,
                            height: 60,
                            child: Text(
                              'Bitter gourd leaves become yellow & dry. How to control this?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),

                  onTap: () {
                    /*Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PostPage(title: 'COIN GREP',)
                        )
                    );*/
                  },

              ),
            ),

//Post 2
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                selectedColor: const Color(0xFF9BD2BF),
                tileColor: const Color(0xFFFFFFFF),

                title:
                Positioned(
                  //right: 18,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: SizedBox(
                      width: 200,
                      height: 300,
                      child: Image.asset('Assets/tomata.jpg', fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),

                subtitle: Container(
                  width: 354,
                  height: 100,
                  // clipBehavior: Clip.antiAlias,
                  //decoration: BoxDecoration(),
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 3,
                        top: 3,
                        child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Icon(Icons.account_circle_sharp,
                              color: Color(0xFF31C48D),)
                        ),
                      ),
                      Positioned(
                        left: 285,
                        top: 7,
                        child: SizedBox(
                          width: 100,
                          height: 25,
                          child: Text.rich(
                            TextSpan(
                              children: [

                                TextSpan(
                                  text: '2 hours',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),

                                TextSpan(
                                  text: ' •',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 34,
                        top: 6,
                        child: SizedBox(
                          width: 302,
                          height: 26,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Mohan Kumar',
                                  style: TextStyle(
                                    color: Color(0xFF31C48D),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),

                                TextSpan(
                                  text: ' •',
                                  style: TextStyle(
                                    color: Color(0xFF050505),
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),

                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: Color(0xFF050505),
                                    fontSize: 8,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),

                                TextSpan(
                                  text: 'Bihar',
                                  style: TextStyle(
                                    color: Color(0xFF050505),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top:32,
                        child: SizedBox(
                          width: 330,
                          height: 60,
                          child: Text(
                            'What is the problem with my tomato plant? All the leaves are turning out like this, Please help?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                onTap: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PostPage(title: 'COIN GREP',)
                      )
                  );*/
                },

              ),
            ),

//Post 3
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                selectedColor: const Color(0xFF9BD2BF),
                tileColor: const Color(0xFFFFFFFF),

                title:
                Positioned(
                  //right: 18,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3.0),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset('Assets/sample 3.jpg', fit: BoxFit.fill
                      ),
                    ),
                  ),
                ),

                subtitle: Container(
                  width: 354,
                  height: 100,
                  // clipBehavior: Clip.antiAlias,
                  //decoration: BoxDecoration(),
                  child: const Stack(
                    children: [
                      Positioned(
                        left: 3,
                        top: 3,
                        child: SizedBox(
                            width: 20,
                            height: 20,
                            child: Icon(Icons.account_circle_sharp,
                              color: Color(0xFF31C48D),)
                        ),
                      ),
                      Positioned(
                        left: 290,
                        top: 7,
                        child: SizedBox(
                          width: 100,
                          height: 25,
                          child: Text.rich(
                            TextSpan(
                              children: [

                                TextSpan(
                                  text: '49 min',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),

                                TextSpan(
                                  text: ' •',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 34,
                        top: 6,
                        child: SizedBox(
                          width: 302,
                          height: 26,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Saroj Behera',
                                  style: TextStyle(
                                    color: Color(0xFF31C48D),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),

                                TextSpan(
                                  text: ' •',
                                  style: TextStyle(
                                    color: Color(0xFF050505),
                                    fontSize: 15,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),

                                TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                    color: Color(0xFF050505),
                                    fontSize: 8,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),

                                TextSpan(
                                  text: 'Nagpur',
                                  style: TextStyle(
                                    color: Color(0xFF050505),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top:32,
                        child: SizedBox(
                          width: 330,
                          height: 60,
                          child: Text(
                            'I found these dark brown spots on the leaves of my apple trees. Any possible reason ?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PostPage(title: 'COIN GREP',)
                      )
                  );
                },

              ),
            ),


          ],
        )


    );
  }
//Bottom NavBar
/*  Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 60,
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
  }*/
}