import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/core/utils/assets.dart';
import 'package:mute_motion_passenger/features/OnBoarding/presentation/views/onBoarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToOnboarding();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: kPrimaryColor,
      child: Center(
        child:Image.asset(AssetsData.logo)
      ),
    );
  }
  void navigateToOnboarding() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        
       Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=> OnBoardingView())
                  );
      },
    );
  }
}