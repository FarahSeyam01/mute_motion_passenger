import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/navdrawer/presentation/views/nav_drawer_view.dart';

class AboutUsScreenBody extends StatelessWidget {
  const AboutUsScreenBody({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: const NavDrawerView(),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title: const Text(
          'About us',
          style:
              TextStyle(fontSize: 22, fontFamily: 'Lato', color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Let’s introduce ourselves!',
                style: TextStyle(
                    fontSize: 22, fontFamily: 'Lato', color: kPrimaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/US.jpg'),
             const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 22, left: 10),
                padding: EdgeInsets.all(9),
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: kPrimaryColor),
                ),
                child: const Text(
                    'The "MuteMotion" project aims to create an innovative smart taxi service catering specifically to deaf and mute drivers. It involves the development of advanced driver assistance systems (ADAS) using artificial intelligence (AI) and mobile application technologies. By enhancing safety features, communication tools, and convenience, MuteMotion seeks to empower the deaf/mute community with job opportunities and effective interaction platforms.',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Comfortaa',
                        color: kPrimaryColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}