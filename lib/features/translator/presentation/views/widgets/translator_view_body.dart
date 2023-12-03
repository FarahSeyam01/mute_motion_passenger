import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/translator/presentation/views/Text_to_sign.dart';

import '../../../../navdrawer/presentation/views/nav_drawer_view.dart';

class TranslatorViewBody extends StatelessWidget {
  const TranslatorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawerView(),
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Translator',
          style:
              GoogleFonts.comfortaa(fontSize: 20, color: Colors.white),
        ),
        /* leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ), */
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 20,
          left: 15,
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding:
              const EdgeInsets.only(right: 20, top: 40, bottom: 20, left: 10),
          child: Column(
            children: [
              Image.asset('assets/images/translator.png'),
              Text(
                'Text To Sign',
                textAlign: TextAlign.center,
                style: GoogleFonts.comfortaa(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Start translation to connect with your driver by translating your text to sign language ',
                textAlign: TextAlign.center,
                style: GoogleFonts.comfortaa(
                  fontSize: 14,
                  color: kPrimaryColor,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: double.infinity,
                height: 58,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(15)),
                child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => TextToSign()));
                    },
                    child:  Text(
                      "Start Translation",
                      style: GoogleFonts.comfortaa(
                          fontSize: 20,
                          color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
