import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/core/utils/widgets/custom_button.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/create_Profile_screen.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/login_screen_view.dart';

import '../../../../../core/utils/widgets/custemOTPbar.dart';

import '../../../../../core/utils/widgets/custemcodefield.dart';

class OTPScreenBody extends StatelessWidget {
  const OTPScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const LoginScreenView()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kPrimaryColor,
            )),
        title: Text(
          'OTP Verification',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            color: kPrimaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 56,
              ),
              Text(
                "Please enter the 4-digit code sent via SMS on\n +20 012875576766",
                style:
                    GoogleFonts.comfortaa(color: kPrimaryColor, fontSize: 15),
              ),
              const SizedBox(
                height: 19,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const LoginScreenView()));
                },
                child: Text(
                  "Edit your mobile number",
                  style: GoogleFonts.comfortaa(
                      color: kPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 71,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  custemcodefield(),
                  custemcodefield(),
                  custemcodefield(),
                  custemcodefield()
                ],
              ),
              const SizedBox(
                height: 79,
              ),
             Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      
                      onPressed: () {
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const CreateProfileScreenView()));
                      },
                      child: Text(
                        'Continue',
                        style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Haven’t received OTP code? ",
                        style: GoogleFonts.comfortaa(
                          fontSize: 12,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resend OTP",
                          style: GoogleFonts.comfortaa(
                              color: kPrimaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
