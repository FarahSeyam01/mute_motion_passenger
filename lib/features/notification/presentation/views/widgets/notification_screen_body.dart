import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/navdrawer/presentation/views/nav_drawer_view.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: const NavDrawerView(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Text(
          'Notification',
          style:
              TextStyle(fontSize: 22, fontFamily: 'Lato', color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Hassan, you have a new order',
                  style: TextStyle(
                      fontSize: 20, fontFamily: 'Lato', color: kPrimaryColor),
                ),
                 SizedBox(
                  height: 5,
                ),
                 Text(
                  'Check out your newest orders to take one of them',
                  style: TextStyle(
                      fontSize: 16, fontFamily: 'Comfortaa', color: kPrimaryColor),
                ),
                 SizedBox(
                  height: 5,
                ),
                Text(
                  '6:00 pm - 16 March',
                  style: TextStyle(
                      fontSize: 12, fontFamily: 'Comfortaa', color: kPrimaryColor),
                ),
                 SizedBox(
                  height: 10,
                ),
                 Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                 Text(
                  'Welcome to our team, Hassan!',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Lato',
                      color: kPrimaryColor),
                ),
                SizedBox(
                  height: 5,
                ),
                 Text(
                  'We are happy to join with us, get your orders now.',
                  style: TextStyle(
                      fontSize: 16, fontFamily: 'Comfortaa', color: kPrimaryColor),
                ),
                 SizedBox(
                  height: 5,
                ),
                 Text(
                  '8:00 pm - 15 March',
                  style: TextStyle(
                      fontSize: 12, fontFamily: 'Comfortaa', color: kPrimaryColor),
                ),
                 SizedBox(
                  height: 10,
                ),
                 Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}