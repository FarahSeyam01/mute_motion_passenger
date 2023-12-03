import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/core/utils/widgets/custom_button.dart';
import 'package:mute_motion_passenger/features/registration/presentation/views/login_screen_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../constants.dart';

class onBoardingViewBody extends StatefulWidget {
  @override
  State<onBoardingViewBody> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoardingViewBody> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          bottom: 80,
        ),
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              if (index == 2) {
                isLastPage = true;
              }
            });
          },
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:41),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Image(
                      width:348 ,
                      height: 325,
                      image:AssetImage(
                          "assets/images/checkYourRide1.png",),
                     
                      
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Text(
                        "Check Your Ride",
                        style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff003248),
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Text(
                        "Keep track of where you are any time",
                        style: GoogleFonts.comfortaa(
                         //fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:41),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Image(
                      width:348 ,
                      height: 325,
                      image:AssetImage(
                          "assets/images/easyPayment2.png",),
                     // borderRadius: BorderRadius.circular(10.0),
                      
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Text(
                        "Easier Payment",
                        style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Text(
                        "You don't have to use cash\n Simply use your visa card or any other method",
                        style: GoogleFonts.comfortaa(
                         //fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                          fontSize: 15,
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:41),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Image(
                      width:348 ,
                      height: 325,
                      image:AssetImage(
                          "assets/images/carDrive3.png",),
                     // borderRadius: BorderRadius.circular(10.0),
                      
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        "Enjoy The Ride",
                        style: GoogleFonts.comfortaa(
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Center(
                      child: Text(
                        "Register now and enjoy your ride with us",
                        style: GoogleFonts.comfortaa(
                          color: kPrimaryColor,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: isLastPage
          ? BottomSheet(
            onClosing:(() => navigateTo(context, LoginScreenView())),
            
            builder:(context) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 58,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreenView()));
                          },
                          child:  Text(
                            "Get Started",
                            style: GoogleFonts.comfortaa(
                                fontSize: 20,
                                color: Colors.white),
                          )),
                    ),
                ],
              ),
            ),
          )
          : Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              height: 80,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                          child: SmoothPageIndicator(
                            controller: controller,
                            count: 3,
                            effect:  ExpandingDotsEffect(
                              spacing: 16,
                              dotColor: const Color(0xff003248).withOpacity(0.6),
                              activeDotColor: kPrimaryColor,
                            ),
                            onDotClicked: (index) => controller.animateToPage(index,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut),
                          ),
                        ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () => controller.jumpToPage(2),
                          child:  Text("Skip",
                          style: GoogleFonts.comfortaa(
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                              fontSize: 18,
                            ),),
                        ),
                        
                        TextButton(
                        onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ),
                          child:  Text("Continue",
                          style: GoogleFonts.comfortaa(
                              fontWeight: FontWeight.w600,
                              color: Color(0xffe7ae00),
                              fontSize: 18,
                            ),),
                        ),
                      ]),
                ],
              ),
            ),
    );
  }
}
