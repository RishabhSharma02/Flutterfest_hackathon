import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Rewardspage extends StatefulWidget {
  const Rewardspage({super.key});

  @override
  State<Rewardspage> createState() => _RewardspageState();
}

class _RewardspageState extends State<Rewardspage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0xff2e358b)),
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
          child: Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Center(
                  child: Container(
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Text(
                          "Riya Kapoor",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                PhosphorIcon(
                                  PhosphorIcons.fill.crown,
                                  color: Colors.yellow,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Rank",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ),
                                      Text(
                                        "127th/7096",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                PhosphorIcon(
                                  PhosphorIcons.fill.star,
                                  color: Colors.yellow,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Points Earned",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ),
                                      Text(
                                        "12550 pts",
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text(
                            "Rankings",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.90 / 2,
                        height: 60,
                      ),
                      Container(
                        child: Center(
                          child: Text(
                            "Points",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width * 0.90 / 2,
                        height: 60,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 60,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Text(
                  "My Ranking",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: ListTile(
                  leading: Text(
                    "127th",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  tileColor: Color(0xff2e358b),
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  title: Text(
                    "Riya kapoor",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    "12550 pts",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20),
                child: Text(
                  "National Ranking",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: ListTile(
                  leading: Text(
                    "1st",
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                  tileColor: Color.fromARGB(255, 156, 160, 194),
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  title: Text(
                    "Vishal Sankar",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  trailing: Text(
                    "1278000 pts",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: ListTile(
                  leading: Text(
                    "2nd",
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                  tileColor: Color.fromARGB(255, 156, 160, 194),
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  title: Text(
                    "Kushal ",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  trailing: Text(
                    "1133008 pts",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: ListTile(
                  leading: Text(
                    "3rd",
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                  tileColor: Color.fromARGB(255, 156, 160, 194),
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  title: Text(
                    "Haresh B.",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  trailing: Text(
                    "1021212 pts",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: ListTile(
                  leading: Text(
                    "4th",
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                  tileColor: Color.fromARGB(255, 156, 160, 194),
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  title: Text(
                    "Divyesh",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  trailing: Text(
                    "99565 pts",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                child: ListTile(
                  leading: Text(
                    "5th",
                    style:
                        GoogleFonts.poppins(fontSize: 17, color: Colors.white),
                  ),
                  tileColor: Color.fromARGB(255, 156, 160, 194),
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  title: Text(
                    "Lakshika",
                    style: GoogleFonts.poppins(
                      fontSize: 17,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  trailing: Text(
                    "93455 pts",
                    style: GoogleFonts.poppins(
                        fontSize: 17,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 60.0, left: 138, right: 135),
          child: CircleAvatar(
            radius: 40,
            child: Image.asset("assets/pic8.png"),
          ),
        )
      ],
    );
  }
}
