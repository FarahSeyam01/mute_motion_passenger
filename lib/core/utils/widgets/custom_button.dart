import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    //required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final String text;
  final Color backgroundColor;
  //final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: kPrimaryColor,
      height: 58,
      
      onPressed: onPressed,
      child:  Text(
        text,
        style: GoogleFonts.comfortaa(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 22,
                      ),
       
      ),
    );
  }
}
