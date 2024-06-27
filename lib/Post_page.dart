import 'package:flutter/material.dart';
import 'package:fasal_sahayak/Bottom_NavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fasal_sahayak/Signup_page.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key, required String title}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool shadowColor = true;
  //int _currentIndex=3;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    useMaterial3:


    //var height = MediaQuery.of(context).size.height;
    //var width = MediaQuery.of(context).size.width;
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
            title:  Text( "Post",
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
        //bottomNavigationBar:  _buildBottomBar(),
      body: Container(
        width: 500,
        height: 800,

        child: Stack(
          children: [
/*//Message Box
            Positioned(
              left: 0,
              top: 710,
              child: Container(
                width: 390,
                height: 59,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Color(0xffb70d0d)),
              ),
            ),*/
//Profile Panel
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                padding: const EdgeInsets.only(top: 20, left: 11),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 30,
                      height: 30,
                      child:Icon(
                      Icons.account_circle_sharp,
                      size: 28,
                      // weight: 100,
                      //grade: -10,
                      //opticalSize: 48.0,
                      color:  Color(0xFF32D7A1),
                    ),
                    ),
                    SizedBox(
                      width: 303,
                      height: 26,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: ' Saroj Behera ',
                              style: TextStyle(
                                color: Color(0xFF31C48D),
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' ',
                              style: TextStyle(
                                color: Color(0xFF31C48D),
                                fontSize: 18,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: '• Nagpur',
                              style: TextStyle(
                                color: Colors.black,
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
                  ],
                ),
              ),
            ),

//image
            Positioned(
              left: 22,
              top: 70,
              child: Container(
                width: 366,
                height: 197,
                //clipBehavior: Clip.antiAlias,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0xFF31C48D),
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7.60),
                      topRight: Radius.circular(7.60),
                    ),
                  ),
                ),
                child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset('Assets/sample 3.jpg',
                    fit: BoxFit.fill,)
                ),
              ),
            ),

//Post Details
            Positioned(
              left: 21.3,
              top: 267,
              child: Container(
                width: 367.50,
                height: 42,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xBF31C48D), Color(0x4E31C48D), Color(0x0031C48D)],
                  ),
                ),
                child: const Stack(
                  children: [
                    Positioned(
                      left: 83,
                      top: 10,
                      child: SizedBox(
                        width: 4,
                        height: 17,
                        child: Text(
                          '•',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF050505),
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 6,
                      top: 7,
                      child: SizedBox(
                        width: 364,
                        height: 23,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '49 min ago',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Ledger',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),

                              TextSpan(
                                text: '   Apple',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Ledger',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

//Subject
            const Positioned(
              left: 22,
              top: 322,
              child: SizedBox(
                width: 364,
                height: 25,
                child: Text(
                  'Problem with apple leaves.',
                  style: TextStyle(
                    color: Color(0xE031C48D),
                    fontSize: 16,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),

 //Issue Details
            const Positioned(
              left: 22,
              top: 350,
              child: SizedBox(
                width: 364,
                child: Text(
                  'I found these dark brown spots on the leaves of my apple trees. Any possible reason?\nWhat are the possible solutions for this?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Readex Pro',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ),

//Translate textbutton
             Positioned(
              left: 300,
              top: 425,
              child: SizedBox(
                width: 100,
                height: 30,
                child: TextButton(
                  onPressed:(){
/*                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignupPage(),
                        )
                    );*/
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith((states) => Colors.transparent),

                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return const Color(0xFF32D7A1);
                        } else {
                          return const Color(0xFF464646);
                        }
                      },
                    ),
                  ),
                  child: const Text(
                  'Translate',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    //color: Color(0xFF464646),
                    fontSize: 14,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                  ),
                ),
                ),
              ),
//Expert Answer  ->>
            Positioned(
              left: 21,
              top: 465,
              child: Container(
                width: 365,
                height: 217,
                clipBehavior: Clip.antiAlias,
                decoration: const ShapeDecoration(
                  color: Color(0x84DCDCDC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      left: 14.50,
                      top: 45,
                      child: SizedBox(
                        width: 343,
                        child: Text(
                          'This looks like apple chlorotic leaf spot virus.\nThis disease can produce diverse symptoms including leaf deformation and leaf spots.\nYou can try chemotherapy technique using ribavirin and 2-thiourical to eradicate viruses. Chemotherapy of infected apple shoots by treating with medium containing ribavirin at 20 mg/L for 4 weeks in first cycle and 100 mg/L in next cycle for next 4 weeks.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Lexend',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 45,
                      top: 24.5,
                      child: Text(
                        '11 min ago',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Ledger',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 2,
                      child: Container(
                        width: 311,
                        height: 28,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(),
                        child: Stack(
                          children: [
                            const Positioned(
                              //left: ,
                              top: 0,
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child:Icon(
                                  Icons.account_circle_sharp,
                                  size: 28,
                                  // weight: 100,
                                  //grade: -10,
                                  //opticalSize: 48.0,
                                  color:  Color(0xFF32D7A1),
                                ),

                              ),
                            ),
                            const Positioned(
                              left: 33,
                              top: 4,
                              child: SizedBox(
                                width: 303,
                                height: 26,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Uttam Kelkar ',
                                        style: TextStyle(
                                          color: Color(0xFF31C48D),
                                          fontSize: 18,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 145,
                              top: 5,
                              child: SizedBox(
                                  width: 30,
                                  height: 20,
                                  child: Image.asset('Assets/scholar icon.jpg',
                                  height:15,
                                  width: 15,
                                  )
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
//Message text box
            Positioned(
              left: 0,
              top: 695,
              child: Container(
                width: 500,
                height: 70,

                decoration:  const BoxDecoration(color: Color(0xFFE4E4E4)),
                child: Stack(
                  children: [
//textfield
                    Positioned(
                      left: 18,
                      top: 10,
                      child: Container(
                       //padding: const EdgeInsets.only(left: 0, right: 39),
                        child: SizedBox(
                          width: 350,
                          height: 40,
                          child: TextFormField(

                            textAlign: TextAlign.left,
                            enableInteractiveSelection: true ,
                            cursorColor: Colors.black,
                            cursorHeight: 30.0,
                            maxLines: 5,
                            cursorWidth: 1,
                            //controller: _inputController,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1.3, color: Color(0xFF32D7A1)), //<-- SEE HERE
                              ),

                              hintText: ' Enter your message',
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
                    ),
//enter button
                    Positioned(
                      left: 355,
                      bottom: 42,
                      child: SizedBox(
                        height: 30,
                        width: 40,
                        child:IconButton(
                          iconSize: 50,
                          icon: const Icon(Icons.keyboard_arrow_right_sharp),
                          onPressed:(){

                           /* Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoginPage(title: 'COIN GREP',)
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


                        ),
                      ),

                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      )
        );

  }

}