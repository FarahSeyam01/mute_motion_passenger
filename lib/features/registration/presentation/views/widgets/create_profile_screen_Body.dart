import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/core/styles.dart';
import 'package:mute_motion_passenger/core/utils/widgets/custom_button.dart';
import 'package:mute_motion_passenger/core/utils/widgets/customtextfield.dart';
import 'package:mute_motion_passenger/features/mainMenu/presentation/views/mainMenu_screen_view.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/OTP_screen_view.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/add_card_view.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/create_Profile_screen.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/widgets/custom_drop_down.dart';

class CreateProfileScreenBody extends StatefulWidget {
  CreateProfileScreenBody({super.key});

  @override
  State<CreateProfileScreenBody> createState() =>
      _CreateProfileScreenBodyState();
}

class _CreateProfileScreenBodyState extends State<CreateProfileScreenBody> {
  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

  final TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => OTPScreenView()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kPrimaryColor,
            )),
        title: Text(
          'Create Your Profile',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Welcome,',
                  style: Styles.textStyle15.copyWith(color: kPrimaryColor),
                ),
                Text(
                  'Let us know some information about you!!',
                  style: Styles.textStyle15
                      .copyWith(fontSize: 12, color: kPrimaryColor),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(
                        20,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/images/person.png'),
                          radius: 60,
                        ),
                        const SizedBox(height: 5),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Upload Image',
                            style: Styles.textStyle12.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: CustomTextField(
                                controller: firstName,
                                hintText: 'First name',
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: CustomTextField(
                                controller: lastName,
                                hintText: 'Last name',
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: CustomTextField(
                                keyboardType: TextInputType.emailAddress,
                                controller: email,
                                hintText: 'Email',
                              )),
                        ),
                        CustomDropDown(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Add Credit Card',
                                    style: GoogleFonts.comfortaa(
                                      color: Colors.black.withOpacity(0.65),
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddCardView()));
                                    },
                                    icon: Icon(Icons.arrow_right)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(right: 22, left: 10),
                  //padding: EdgeInsets.all(8),
                  width: double.infinity,
                  height: 58,
                  decoration: BoxDecoration(
                      color: const Color(0xff003248),
                      borderRadius: BorderRadius.circular(15)),
                  child: MaterialButton(
                      onPressed: () {
                        navigateTo(
                          context,
                          MainMenuScreenView(),
                        );
                      },
                      child: Text(
                        "Done",
                        style: GoogleFonts.comfortaa(
                            fontSize: 20, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
