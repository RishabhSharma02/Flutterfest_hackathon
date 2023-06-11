import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterfest_submission/views/intro_screen2.dart';
import 'package:flutterfest_submission/views/loginpage.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class IS1 extends StatelessWidget {
  const IS1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset("assets/pic1.svg"),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.13),
                  child: SvgPicture.asset(
                    "assets/pic2.svg",
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "SAKSHAM",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    "From our endeavours to yours...",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 40),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => loginpage());
                        },
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(() => loginpage(),
                          transition: Transition.cupertino);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: PhosphorIcon(
                        PhosphorIcons.bold.caretRight,
                        color: Colors.white,
                        size: 14,
                      ),
                    ),
                  )
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
