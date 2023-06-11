import 'package:calender_picker/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterfest_submission/modals/course_chips.dart';
import 'package:flutterfest_submission/views/course_page.dart';
import 'package:flutterfest_submission/views/leaderboard.dart';
import 'package:flutterfest_submission/views/scanner.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late DateTime _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xff2e358b)),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 2.7),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white,
            ),
          ),
        ),
        SafeArea(
          child: Scaffold(
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: GNav(
                tabs: [
                  GButton(
                    iconActiveColor: Color(0xff2e358b),
                    iconColor: Color(0xff2e358b),
                    icon: PhosphorIcons.bold.houseSimple,
                    text: "Home",
                    textColor: Color(0xff2e358b),
                  ),
                  GButton(
                    onPressed: () {
                      Get.to(() => CoursePage(),
                          transition: Transition.cupertino);
                    },
                    iconActiveColor: Color(0xff2e358b),
                    iconColor: Color(0xff2e358b),
                    icon: PhosphorIcons.bold.video,
                    text: "Courses",
                    textColor: Color(0xff2e358b),
                  ),
                  GButton(
                    onPressed: () {
                      Get.to(() => Scanner(), transition: Transition.cupertino);
                    },
                    iconActiveColor: Color(0xff2e358b),
                    iconColor: Color(0xff2e358b),
                    icon: PhosphorIcons.bold.puzzlePiece,
                    text: "Games",
                    textColor: Color(0xff2e358b),
                  ),
                  GButton(
                    onPressed: () {
                      Get.to(() => Rewardspage(),
                          transition: Transition.cupertino);
                    },
                    iconActiveColor: Color(0xff2e358b),
                    iconColor: Color(0xff2e358b),
                    icon: PhosphorIcons.bold.sketchLogo,
                    text: "Reward",
                    textColor: Color(0xff2e358b),
                  )
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Riya!',
                            style: GoogleFonts.poppins(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              'Your next lesson starts: ',
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: CircleAvatar(
                            radius: 40, child: Image.asset("assets/pic8.png")),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: CalenderPicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Color(0xffdb704e),
                    selectedTextColor: Colors.white,
                    onDateChange: (date) {
                      // New date selected
                      setState(() {
                        _selectedValue = date;
                      });
                    },
                    width: 75,
                    height: 75,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 15),
                  child: Text(
                    'Ongoing sessions',
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Coursechips(
                          assetname: "assets/pic5.svg",
                          color: Color(0xffF1D5CA),
                          coursename: "Moral Values",
                        ),
                        Coursechips(
                            assetname: "assets/pic6.svg",
                            color: Color(0xffCBE8F0),
                            coursename: 'Env. Studies'),
                        Coursechips(
                            assetname: "assets/pic7.svg",
                            color: Color(0xffF1D0D9),
                            coursename: 'Basic Maths')
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12, left: 15),
                  child: Text(
                    'Rewatch last session',
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                  child: ListTile(
                    tileColor: Color(0xffe9eaf1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    title: Text(
                      "Good habits",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Part 03/10 (30 min.)",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: Color(0xff2e358b),
                      radius: 40,
                      child: Icon(
                        Icons.video_camera_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                  child: ListTile(
                    tileColor: Color(0xffe9eaf1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    title: Text(
                      "Basic Mathematics",
                      style: GoogleFonts.poppins(
                          fontSize: 17,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      "Part 05/10 (45 min.)",
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: CircleAvatar(
                      backgroundColor: Color(0xff2e358b),
                      radius: 40,
                      child: Icon(
                        Icons.video_camera_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
