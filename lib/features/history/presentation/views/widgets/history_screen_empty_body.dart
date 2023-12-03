import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/navdrawer/presentation/views/nav_drawer_view.dart';

class HistoryScreenEmptyBody extends StatelessWidget {
  const HistoryScreenEmptyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawerView(),
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'History',
          style:
              TextStyle(fontSize: 24, fontFamily: 'Lato', color: Colors.white),
        ),
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
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'No Requests yet',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Comfortaa', color: kPrimaryColor),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'start your first ride & request now!',
              style: TextStyle(
                  fontSize: 16, fontFamily: 'Comfortaa', color: kPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}