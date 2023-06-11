import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'loginpage.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    bool status = false;
    return SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.215),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Color(0xff2e358b),
              ),
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.06),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset("assets/pic9.png")),
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Center(
                        child: Center(
                          child: Text(
                            "WELCOME",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8.0, right: 8, top: 100),
                      child: Center(
                        child: Text(
                          "Whose on board with us today ?",
                          textAlign: TextAlign.center,
                          maxLines: 5,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "NGO",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.transparent,
                                backgroundColor: Color(0xffdb704e),
                                side: BorderSide.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                "Student",
                                style: GoogleFonts.poppins(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.transparent,
                                backgroundColor: Color(0xff4ca1b0),
                                side: BorderSide.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 100.0, left: 8.0, right: 8),
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.off(() => LoginPage());
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            )),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8.0, left: 8.0, right: 8),
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.95,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Signup",
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            side: BorderSide(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 1),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          )
        ],
      ),
    );
    ;
  }
}
