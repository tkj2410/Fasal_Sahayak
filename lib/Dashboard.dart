import 'package:fasal_sahayak/Navbar.dart';
import 'package:fasal_sahayak/Post_page.dart';
import 'package:fasal_sahayak/Query_Page.dart';
import 'package:fasal_sahayak/Camera_page.dart';
import 'package:flutter/material.dart';
import 'package:fasal_sahayak/Bottom_NavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fasal_sahayak/Signup_page.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
//import "package:get/get.dart";

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required String title}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool shadowColor = true;
  int _currentIndex = 0 ;
  double? scrolledUnderElevation;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  late PageController _pageController;

  static const List<Widget> _widgetOptions = <Widget>[
    Dashboard(title: ''),
    QueryPage(title: '',),
    PostPage(title: '',),
  ];


  void _onTabChanged(int index) {
    setState(() {
      _currentIndex = _selectedIndex;
      _widgetOptions[index];
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
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

        title:  Text( "Fasal Sahaayak",
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


      bottomNavigationBar:  BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.people),
              title: Text('Users'),
              activeColor: Colors.purpleAccent
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.message),
              title: Text('Messages'),
              activeColor: Colors.pink
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.settings),
              title: Text('Settings'),
              activeColor: Colors.blue
          ),
        ],
      ),

        body: Center(

          child:Column(
                children: [
    //Get Help
                 // getBody(),
                  Padding(
                    padding: const EdgeInsets.only(right:235, top: 30),
                    child: SizedBox(
                      width: 120,
                      height: 40,

                      child: Text( "Get Help",
                        style: GoogleFonts.poppins(
                          textStyle:  const TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Poppins',
                            color:  Colors.black,
                            fontWeight: FontWeight.w600,
                            height: 0,

                          ),
                        ),
                      ),
                    ),
                  ),

    //Camera & Diagnosis
                  Padding(
                    padding: const EdgeInsets.only(left:5.0,right: 10, top: 15),
                    child: Container(
                        width: 355,
                        height: 229,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFDBDBDB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),

                        child: Stack(
                          children: [
    //plant icon
                            Positioned(
                              left: 1,
                              top: 15,
                              child: SizedBox(
                                  width: 70,
                                  height: 70,
                                  child: Image.asset('Assets/plant_icon-removebg-preview.png')
                              ),
                            ),

    //Take A pic button
                            Positioned(
                              left: 25,
                              top: 168,
                              child:SizedBox(
                                width: 300,
                                height: 46,
                                  child:MaterialButton(
                                    elevation: 15.0,
                                    highlightColor: const Color(0xFF4CE7B4),
                                    color: const Color(0xFF31C48D),
                                    onPressed:(){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  const CameraPage(title: ' ',),
                                          )
                                      );
                                    },
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(width: 0.50, color: Color(
                                          0xFF27B788)),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child:const SizedBox(
                                          width: 250,
                                          height: 28,
                                          child: Text(
                                            'Take a picture',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                        ),

                                    ),
                              ),
                            ),

    //Diagnosis icon
                            Positioned(
                              left: 215,
                              top: 40,
                              child: SizedBox(
                                  width: 100,
                                  height: 100,
                                  child: Image.asset('Assets/diagonasis_icon.png')
                              ),
                            ),

    //Capture Text
                            const Positioned(
                              left: 70,
                              top: 132,
                              child: SizedBox(
                                width: 103,
                                height: 22,
                                child: Text('Capture',
                                  textAlign: TextAlign.center,
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

    //Diagnosis Text
                            const Positioned(
                              left: 217,
                              top: 132,
                              child: SizedBox(
                                width: 83,
                                height: 22,
                                child: Text(
                                  'Diagnosis',
                                  textAlign: TextAlign.center,
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

    //Camera Icon
                            const Positioned(
                              left: 73,
                              top: 40,
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                  child:Icon(
                                     Icons.camera_alt_outlined,
                                      size: 80,
                                     // weight: 100,
                                      //grade: -10,
                                      //opticalSize: 48.0,
                                    color:  Color(0xFF32D7A1),
                                  ),
                                ),
                            ),

                          ],
                        ),
                      ),
                  ),

    //Weather Text
                  Padding(
                    padding: const EdgeInsets.only(right:235, top: 35),
                    child: SizedBox(
                      width: 120,
                      height: 30,


                      child: Text( "Weather",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.poppins(
                          textStyle:  const TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'Poppins',
                            color:  Colors.black,
                            fontWeight: FontWeight.w600,
                            height: 0,

                          ),
                        ),
                      ),
                    ),
                  ),

    //Weather display
                  Padding(
                    padding:  const EdgeInsets.only( right: 4),
                    child: Positioned(
                      //left:0,
                      //top: 0,
                      child: SizedBox(
                        // width: 450,
                        //height:450,
                        child: Image.asset('Assets/Weather_api.png',
                          width: 400,
                          height: 300,),
                      ),
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.only( top: 11),
                    child: Positioned(
                      //left:0,
                      bottom: 100,
                      child: SizedBox(
                        width: 100,
                        height:8,
                        child: IconButton(
                          icon: Icon(Icons.vertical_align_bottom),
                        color: Colors.grey,
                        onPressed: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>   QueryPage(title: ' ',),
                            )
                        );},

                        ),

                      ),
                    ),
                  )


                ],
                  ),
                ),
              );

  }
//Bottom NavBar
 /* Widget _buildBottomBar(){
    print(_currentIndex);
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
  }

  Widget getBody() {
    List<Widget> pages = [
      const Dashboard(title: ''),
      const QueryPage(title: '',),
      //const PostPage(title: '',),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }*/
}