import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/core/utils/widgets/custom_button.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/OTP_screen_view.dart';

class LoginScreenViewBody extends StatelessWidget {
  LoginScreenViewBody({super.key});
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Enter Mobile Number',
          style: GoogleFonts.lato(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Please enter your mobile number to contact us ',
                    style: GoogleFonts.comfortaa(
                      fontSize: 14.5,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: phoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Mobile Number can't be empty";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: "+20 1111111111",
                      suffixIcon: Icon(Icons.person),
                      
                    ),
                  ),
                  const SizedBox(
                    height: 50,
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
                         Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const OTPScreenView()));
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
                    height: 35,
                  ),
                 Divider(),
                 Text(
                  'or',
                        style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 15,
                        ),),
                 const SizedBox(
                    height: 20,
                  ),
                 Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.solidEnvelope),
                        TextButton(
                          
                          onPressed: () {},
                          child: Text(
                            'Continue with Email',
                            style: GoogleFonts.comfortaa(
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                 Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.apple),
                        TextButton(
                          
                          onPressed: () {},
                          child: Text(
                            'Continue with Apple',
                            style: GoogleFonts.comfortaa(
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 const SizedBox(
                    height: 20,
                  ),
                 Container(
                    height: 58,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(FontAwesomeIcons.google),
                        TextButton(
                          
                          onPressed: () {},
                          child: Text(
                            'Continue with Google',
                            style: GoogleFonts.comfortaa(
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
