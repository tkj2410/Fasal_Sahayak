import 'package:fasal_sahayak/Bottom_NavBar.dart';
import 'package:fasal_sahayak/Dashboard.dart';
import 'package:flutter/material.dart';
import 'package:fasal_sahayak/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  @override
  Widget build(BuildContext context) {
    useMaterial3: true;
    //var height = MediaQuery.of(context).size.height;
    //var width = MediaQuery.of(context).size.width;
    return Scaffold(
       // bottomNavigationBar: WrapperPage(),
      //backgroundColor: const Color(0xFFE5413F),
        resizeToAvoidBottomInset: false,
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
// Page Label Text
                Positioned(
                  left: 110,
                  top: 57.5,
                  child: SizedBox(
                    width: 250,
                    height: 40,

                    child: Text( "Create Account",
                      style: GoogleFonts.poppins(
                        textStyle:  const TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Poppins',
                          color:  Color(0xFF32D7A1),
                          fontWeight: FontWeight.w600,
                          height: 0,

                        ),
                      ),
                    ),
                  ),
                ),

//APP ICON
                Positioned(
                  left: 55,
                  top: 110,
                  child: Container(
                    width: 300,
                    height: 300,
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
                ),

//Top Arrow button  ->->
              Positioned(
                left: 10,
                top: 50,
                child: SizedBox(
                  width: 40,
                  height: 40,

                  child:IconButton(
                    iconSize: 35,
                    icon: const Icon(Icons.arrow_back_sharp),
                    onPressed:(){

                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage(title: 'COIN GREP',)
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


                  ),
                ),
              ),

//User Name label ->->
                Positioned(
                  left: 50,
                  top: 440,
                  child: SizedBox(
                    width: 250,
                    height: 40,

                    child: Text( "Name",
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

//User Name TextFeild ->->
                Positioned(
                  left: 50,
                  top: 454,
                  child: SizedBox(
                    width: 310,
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

                        hintText: 'Enter your user name',
                        hintStyle: TextStyle(color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                        contentPadding: EdgeInsets.symmetric(vertical: 5.0),

                      ),
                      style: const TextStyle(color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),

                    ),
                  ),
                ),

//Email label ->->
              Positioned(
                left: 50,
                top: 500,
                child: SizedBox(
                  width: 250,
                  height: 40,

                  child: Text( "Email Id.",
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
                left: 50,
                top: 514,
                child: SizedBox(
                  width: 310,
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
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),

                  ),
                ),
              ),
//Phone label ->->
              Positioned(
                left:50,
                top: 560,
                child: SizedBox(
                  width: 250,
                  height: 40,

                  child: Text( "Phone no.",
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

//Phone TextFeild ->->
              Positioned(
                left:50,
                top: 574,
                child: SizedBox(
                  width: 310,
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

                      hintText: 'Enter your phone no.',
                      hintStyle: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0),

                    ),
                    style: const TextStyle(color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),

                  ),
                ),
              ),

//Password label ->->
                Positioned(
                  left:50,
                  top: 620,
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
                  left:50,
                  top: 634,
                  child: SizedBox(
                    width: 310,
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
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),

                    ),
                  ),
                ),

//Re enter Password label ->->
              Positioned(
                left: 50,
                top: 680,
                child: SizedBox(
                  width: 250,
                  height: 40,

                  child: Text( "Re-Enter Password",
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

//Re enter Password TextFeild ->->
              Positioned(
                left: 50,
                top: 694,
                child: SizedBox(
                  width: 310,
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

                      hintText: 'Enter your password again',
                      hintStyle: TextStyle(color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                      contentPadding: EdgeInsets.symmetric(vertical: 5.0),

                    ),
                    style: const TextStyle(color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),

                  ),
                ),
              ),


//Sign Up Button ->->
              Positioned(
                left: 120,
                top: 760,
                child: SizedBox(
                  width: 180.0,
                  height: 50,

                  child:MaterialButton(

                    elevation: 15.0,
                    highlightColor: const Color(0xFF32D7A1),
                    color: const Color(0xFF31C48D),
                    onPressed:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dashboard(title: 'COIN GREP',)
                            )
                        );
                    },

                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 0.50, color: Color(0xFF32D7A1)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Sign Up",
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

              ],
            ),
          ),
        )
    );
  }
}


