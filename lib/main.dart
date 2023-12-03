import 'package:flutter/material.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/OnBoarding/presentation/views/onBoarding_view.dart';
import 'package:mute_motion_passenger/features/Rating/presentation/views/rating_view.dart';
import 'package:mute_motion_passenger/features/chat/presentation/views/chat_screen_view.dart';
import 'package:mute_motion_passenger/features/driverProfile/presentation/views/DriverProfileView.dart';
import 'package:mute_motion_passenger/features/mainMenu/presentation/views/mainMenu_screen_view.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/add_card_view.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/create_Profile_screen.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/login_screen_view.dart';
import 'package:mute_motion_passenger/features/splash/presentation/views/splash_view.dart';
import 'package:mute_motion_passenger/features/translator/presentation/views/translator_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
       
      ), */
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
