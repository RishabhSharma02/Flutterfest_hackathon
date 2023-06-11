import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Scanner extends StatelessWidget {
  const Scanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/m.png",
      fit: BoxFit.cover,
    );
  }
}
