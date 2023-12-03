import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';

class custemOTPbar extends StatelessWidget{
  const custemOTPbar({super.key});

  @override
  Widget build(BuildContext context) {
   return AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kPrimaryColor,
            )),
        title: Text(
          'OTP Verification',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              color: Color(0xff003248),
              fontSize: 22),
        ),
      );
  }
}