import 'package:fasal_sahayak/Dashboard.dart';
import 'package:fasal_sahayak/Navbar.dart';
import 'package:fasal_sahayak/Post_page.dart';
import 'package:fasal_sahayak/Query_Page.dart';
import 'package:flutter/material.dart';
import 'package:fasal_sahayak/Bottom_NavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fasal_sahayak/Signup_page.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';




class CameraPage extends StatefulWidget {
  const CameraPage({Key? key, required String title}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  bool shadowColor = true;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xff000000),
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
                      title:  Text( "Camera",
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
 /*BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF32D7A1),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[

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
      body: Container(
        width: 500,
        height: 800,
        child:   Stack(
        children: [

          Positioned(
            left: 35,
            top: 30,
            child: SizedBox(
                child: Image.asset("Assets/Capture_frame.png"),
                ),
            ),
          const Positioned(
            left: 365,
            top: 20,
            child: SizedBox(
                width: 35,
                height: 35,
                child: Icon(Icons.flash_off_sharp,
                  color: Colors.white,)
            ),
          ),
          Positioned(
            left: 0,
            top: 610,
            child: Container(
                width: 400,
                height: 200,
              clipBehavior: Clip.antiAlias,
              decoration: const ShapeDecoration(
                color: Color(0xFF96E8CE),
                shape: RoundedRectangleBorder(
                ),
              ),
            ),
          ),

          Positioned(
            left: 185,
            top: 640,
            child: SizedBox(
                width: 35,
                height: 35,
                child: Icon(Icons.camera,
                  color: Colors.white,
                size: 50)
            ),
          ),

          Positioned(
            left: 120,
            top: 650,
            child: SizedBox(
                width: 35,
                height: 35,
                child: Icon(Icons.zoom_out,
                  color: Colors.white,
                    size: 43)
            ),
          ),

          Positioned(
            left: 260,
            top: 650,
            child: SizedBox(
                width: 35,
                height: 35,
                child: Icon(Icons.zoom_in_sharp,
                  color: Colors.white,
                    size: 43)
            ),
          ),
          Positioned(
            left: 20,
            top: 640,
            child: SizedBox(
                width: 35,
                height: 35,
                child: IconButton(
                  icon: const Icon(Icons.photo_library_sharp),
                  iconSize: 40,
                  onPressed: (){},
                  color: Colors.white,
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),

                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFF32D7A1);
                        } else {
                          return  Colors.white;
                        }
                      },
                    ),
                  ),
                ),
            ),
          ),

          ],
         ),
        ),
    );
  }
}