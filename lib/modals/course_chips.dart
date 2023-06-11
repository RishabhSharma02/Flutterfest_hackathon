import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Coursechips extends StatelessWidget {
  final String assetname;
  final Color color;
  final String coursename;
  const Coursechips(
      {super.key,
      required this.assetname,
      required this.color,
      required this.coursename});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: 150,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Container(
                child: SvgPicture.asset(assetname),
                width: 200,
                height: 130,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                coursename,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
