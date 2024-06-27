import 'package:fasal_sahayak/Bottom_NavBar.dart';
import 'package:flutter/material.dart';
import 'package:fasal_sahayak/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {

  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    //var width = MediaQuery.of(context).size.width;
    return Scaffold(
      //  bottomNavigationBar: WrapperPage(),
      //backgroundColor: const Color(0xFFE5413F),
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Container(
            width: 415,
            height: 880,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFF31C48D),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 30.47,
                  top: 97,
                  child: Container(
                    width: 350,
                    height: 350,
                    //alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage:  const AssetImage('Assets/starting page icon.jpg'),
                      backgroundColor: const Color(0xFF31C48D),
                      //radius: 180,
                      onBackgroundImageError: (e, s) {
                        debugPrint('image issue, $e,$s');
                      },
                    ),
                  ),

                      //color: Colors.white.withOpacity(1),
                      //colorBlendMode: BlendMode.modulate,

         /*           decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/293x289"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(152),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],*/
                  ),

                const Positioned(
                  left: 11,
                  top: 475,
                  child: SizedBox(
                    width: 382,
                    child: Text(
                      'Keep your plants thriving with Fasal Sahaayak',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
/*                Positioned(
                  left: 37,
                  top: 565,
                  child: Container(
                    width: 336,
                    height: 54,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF31C48D),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFF19B563)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 128,
                  top: 578,
                  child: SizedBox(
                    width: 186,
                    height: 37,
                    child: Text(
                      'Log In as  Expert',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),*/
                Positioned(
                  left: 37,
                  top: 570,
                  child: SizedBox(
                    width: 335.0,
                    height: 55,

                    child:MaterialButton(

                      elevation: 15.0,
                      highlightColor: const Color(0xFF32D7A1),
                      color: const Color(0xFF31C48D),
                      onPressed:(){
                        Navigator.push
                          (
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage(title: 'Fasal Sahayak',)
                            )
                        );
                      },

                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFF19B563)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("Log In as Expert",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle:  const TextStyle(
                            // fontStyle: FontStyle.italic,
                            fontSize: 23.0,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            height: 0,

                          ),),
                      ),
                    ),
                  ),
                ),
/*                Positioned(
                  left: 37,
                  top: 670,
                  child: Container(
                    width: 336,
                    height: 54,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF31C48D),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFF19B563)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
                const Positioned(
                  left: 128,
                  top: 681,
                  child: SizedBox(
                    width: 165,
                    height: 37,
                    child: Text(
                      'Log In as user',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),*/
                Positioned(
                  left: 37,
                  top: 680,
                  child: SizedBox(
                    width: 335.0,
                    height: 55,

                    child:MaterialButton(

                      elevation: 15.0,
                      highlightColor: const Color(0xFF32D7A1),
                      color: const Color(0xFF31C48D),
                      onPressed:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage(title: 'Fasal Sahayak',)
                            )
                        );
                      },

                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFF19B563)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("Log In as user",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          textStyle:  const TextStyle(
                           // fontStyle: FontStyle.italic,
                            fontSize: 23.0,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            height: 0,

                          ),),
                      ),
                    ),
                  ),
                ),
                        /*Positioned(
                          left: 27.12,
                          top: 18,
                          child: SizedBox(
                            width: 65.50,
                            height: 19,
                            child: Text(
                              '3:56 PM',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ),*/
                        /*Positioned(
                          left: 270.12,
                          top: 25,
                          child: Container(
                            width: 19.76,
                            height: 23.68,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://via.placeholder.com/20x24"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),*/
                       /* Positioned(
                          left: 290.29,
                          top: 25,
                          child: Container(
                            width: 19.76,
                            height: 23.68,

                              child: Image.asset(
                                "Assets/fasal-sahaayak-high-resolution-logo-color-on-transparent-background.png",
                                fit: BoxFit.fill,
                                width: 350.0,
                                height: 330.0,
                                color: Colors.red.withOpacity(1),
                                colorBlendMode: BlendMode.modulate,
                              ),

                          ),
                        ),*/
                        /*Positioned(
                          left: 314.48,
                          top: 28,
                          child: Container(
                            width: 23.49,
                            height: 30,
                            child: Image.asset(
                              "Assets/fasal-sahaayak-high-resolution-logo-color-on-transparent-background.png",
                              fit: BoxFit.fill,
                              width: 350.0,
                              height: 330.0,
                             // color: Colors.red.withOpacity(1),
                              //colorBlendMode: BlendMode.modulate,
                            ),
                            ),
                          ),*/

                        /*Positioned(
                          left: 339.69,
                          top: 21,
                          child: SizedBox(
                            width: 29.93,
                            height: 19.35,
                            child: Text(
                              '58%',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),*/
              ],
            ),
          ),
        )
    );
  }
}


