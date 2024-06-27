import 'package:fasal_sahayak/Bottom_NavBar.dart';
import 'package:flutter/material.dart';
import 'package:fasal_sahayak/Signup_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required String title}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    useMaterial3: true;
    //var height = MediaQuery.of(context).size.height;
    //var width = MediaQuery.of(context).size.width;
    return Scaffold(
        //bottomNavigationBar: WrapperPage(),
      resizeToAvoidBottomInset: false,

      //backgroundColor: const Color(0xFFE5413F),
        body: Center(
          child: Container(
            width: 415,
            height: 880,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: const Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 30.47,
                  top: 70,
                  child: Container(
                    width: 350,
                    height: 350,
                    //alignment: Alignment.center,
                    child: CircleAvatar(
                      backgroundImage:  const AssetImage('Assets/cute plant.png'),
                      backgroundColor: const Color(0xFFFFFFFF),
                      //radius: 180,
                      onBackgroundImageError: (e, s) {
                        debugPrint('image issue, $e,$s');
                      },
                    ),
                  ),
                ),

//Google bar
               Positioned(
                 left: 60,
                 top: 425,
                 child:  Container(
                    width: 294,
                    height: 45,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),

               ),

//Google bar ->->
                Positioned(
                  left: 75,
                  top: 425,
                  child: Container(
                    width: 250,
                    height: 45,
                    //alignment: Alignment.center,
                    child: Image.asset('Assets/google auth.png',),
                    ),

                ),

//Top Marker  ->->
                Positioned(
                  left: 20,
                  top: 50,
                  child: SizedBox(
                    width: 250,
                    height: 40,

                    child: Text( "Log In",
                      style: GoogleFonts.poppins(
                        textStyle:  const TextStyle(
                          fontSize: 28.0,
                          fontFamily: 'Poppins',
                          color:  Color(0xFF32D7A1),
                          fontWeight: FontWeight.w600,
                          height: 0,

                        ),
                      ),
                    ),
                  ),
                ),

//Left Divider
              const Positioned(
                left: 60,
                top: 508,

                  child:  SizedBox(
                    width: 120,
                    height: 1,
                    child: Divider(
                      height: 2,
                      thickness: 1.2,
                     // endIndent: 0,
                     // indent:0 ,
                      color: Colors.black54,
                    ),
                  ),
              ),
//OR text
                Positioned(
                  left: 200,
                  top: 495,
                  child: SizedBox(
                    width: 30,
                    height: 30,

                    child: Text( "OR",
                      style: GoogleFonts.poppins(
                        textStyle:  const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          color:  Colors.black54,
                          fontWeight: FontWeight.w600,
                          height: 0,

                        ),
                      ),
                    ),
                  ),
                ),

//Right Divider
                const Positioned(
                  left: 240,
                  top: 508,

                  child:  SizedBox(
                    width: 120,
                    height: 1,
                    child: Divider(
                      height: 2,
                      thickness: 1.2,
                      // endIndent: 0,
                      // indent:0 ,
                      color: Colors.black54,
                    ),
                  ),
                ),

//Email label ->->
                Positioned(
                  left: 70,
                  top: 532,
                  child: SizedBox(
                    width: 250,
                    height: 40,

                    child: Text( "Email/Phone no.",
                      style: GoogleFonts.poppins(
                        textStyle:  const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          color:  Color(0xFF32D7A1),
                          fontWeight: FontWeight.w600,
                          height: 0,

                        ),
                      ),
                    ),
                  ),
                ),

//Email TextFeild ->->
                Positioned(
                  left: 70,
                  top: 546,
                  child: SizedBox(
                    width: 280,
                    height: 30,
                    child: TextFormField(

                      textAlign: TextAlign.left,
                      enableInteractiveSelection: true ,
                      cursorColor: Colors.black,
                      cursorHeight: 30.0,
                      maxLines: 2,
                      cursorWidth: 1,
                      //controller: _inputController,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1.3, color: Color(0xFF32D7A1)), //<-- SEE HERE
                        ),

                        hintText: 'Enter your email/phone no.',
                        hintStyle: TextStyle(color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0),

                      ),
                      style: const TextStyle(color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          ),

                    ),
                ),
                ),

//Password label ->->
                Positioned(
                  left: 70,
                  top: 598,
                  child: SizedBox(
                    width: 250,
                    height: 40,

                    child: Text( "Password",
                      style: GoogleFonts.poppins(
                        textStyle:  const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          color:  Color(0xFF32D7A1),
                          fontWeight: FontWeight.w600,
                          height: 0,

                        ),
                      ),
                    ),
                  ),
                ),

//Password TextFeild ->->
                Positioned(
                  left: 70,
                  top: 612,
                  child: SizedBox(
                    width: 280,
                    height: 30,
                    child: TextFormField(

                      textAlign: TextAlign.left,
                      enableInteractiveSelection: true ,
                      cursorColor: Colors.black,
                      cursorHeight: 30.0,
                      maxLines: 2,
                      cursorWidth: 1,
                      //controller: _inputController,
                      decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1.3, color: Color(0xFF32D7A1)), //<-- SEE HERE
                        ),

                        hintText: 'Enter your password',
                        hintStyle: TextStyle(color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0),

                      ),
                      style: const TextStyle(color: Colors.black87,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),

                    ),
                  ),
                ),

//Forgot Password TextButton ->->
                Positioned(
                  left: 2.5,
                  top: 634,
                  child: SizedBox(
                    width: 280,
                    height: 50,

                    child:TextButton(
                      onPressed:(){

/*                        Navigator.push(
                            //context,
                            //MaterialPageRoute(builder: (context) => InputPage(title: 'COIN GREP',)
                            )
                        );*/
                      },
                      style: ButtonStyle(
                        overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),

                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return const Color(0xFF01A141);
                            } else {
                              return const Color(0xFF32D7A1);
                            }
                          },
                        ),
                      ),

                      child: Text("Forgot password?",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(

                          textStyle:   const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Poppins',
                            //color:  Color(0xFF32D7A1),
                            fontWeight: FontWeight.w500,
                            height: 0,

                          ),
                        ),
                      ),

                    ),
                  ),
                ),

//Login Button ->->
                Positioned(
                  left: 120,
                  top: 694,
                  child: SizedBox(
                    width: 180.0,
                    height: 50,

                    child:MaterialButton(

                      elevation: 15.0,
                      highlightColor: const Color(0xFF32D7A1),
                      color: const Color(0xFF31C48D),
                      onPressed:(){
/*                        Navigator.push(
                            //context,
                            //MaterialPageRoute(builder: (context) => InputPage(title: 'COIN GREP',)
                            )
                        );*/
                      },

                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 0.50, color: Color(0xFF32D7A1)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text("Log In",
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

//Text UnderLine ->->
                Positioned(
                  left: 42,
                  top: 762,
                  child: Container(
                    width: 326.01,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFF32D7A1),
                        ),
                      ),
                      shadows: [
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

//Account Text->->
                  Positioned(
                    left: 55,
                    top: 772,
                    child: SizedBox(
                      width: 250,
                      height: 30,

                      child: Text( "Don't have an account ?",
                        style: GoogleFonts.poppins(
                          textStyle:  const TextStyle(
                            fontSize: 18.0,
                            fontFamily: 'Poppins',
                            color:  Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            height: 0,

                          ),
                        ),
                        ),
                    ),
                ),

//Sign up Textbutton ->->
                Positioned(
                  left: 274,
                  top: 760,
                  child: SizedBox(
                    width: 100,
                    height: 50,

                    child:TextButton(
                      onPressed:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignupPage(),
                            )
                        );
                      },
                      style: ButtonStyle(
                       overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),

                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return const Color(0xFF01A141);
                              } else {
                                return const Color(0xFF32D7A1);
                              }
                            },
                      ),
                      ),

                      //elevation: 15.0,
                      //highlightColor: const Color(0xFF32D7A1),
                      //color: const Color(0xFF31C48D),


                      child: Text("Sign up",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(

                        textStyle:   const TextStyle(
                          // fontStyle: FontStyle.italic,
                          fontSize: 18.0,
                          fontFamily: 'Poppins',
                          //color:  Color(0xFF31C48D),
                          fontWeight: FontWeight.w600,
                          height: 0,

                        ),
                      ),
                    ),

                    ),
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}


