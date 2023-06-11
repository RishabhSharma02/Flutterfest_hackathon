import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hextoColor('#F5F6FF'),
      body: SafeArea(
        child: Column(children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  PhosphorIcons.bold.caretLeft,
                  size: 32.0,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'COURSES',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
            height: 1,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/ad.png"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Courses',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(children: [
              Container(
                decoration: BoxDecoration(
                  color: hextoColor("#D1DDFF"),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 10,
                height: 134,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        PhosphorIcons.bold.atom,
                        size: 50.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Basic Sciences",
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: CircularPercentIndicator(
                                  circularStrokeCap: CircularStrokeCap.round,
                                  radius: 30,
                                  percent: 0.8,
                                  lineWidth: 7,
                                  center: Text(
                                    "80%",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                  progressColor: hextoColor("#3953A0"),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ],
              )
            ]),
            width: 354,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(children: [
              Container(
                decoration: BoxDecoration(
                  color: hextoColor("#D1DDFF"),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 10,
                height: 134,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        PhosphorIcons.bold.desktop,
                        size: 50.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Basic computers",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: CircularPercentIndicator(
                              circularStrokeCap: CircularStrokeCap.round,
                              radius: 30,
                              percent: 0.60,
                              lineWidth: 7,
                              center: Text(
                                "60%",
                                style: GoogleFonts.montserrat(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ),
                              progressColor: hextoColor("#3953A0"),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ]),
            width: 354,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
          )
        ]),
      ),
    );
  }
}

hextoColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
