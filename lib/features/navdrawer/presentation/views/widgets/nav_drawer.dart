import 'package:flutter/material.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/aboutUs/presentation/views/aboutUs_screen_view.dart';
import 'package:mute_motion_passenger/features/history/presentation/views/history_screen_view.dart';
import 'package:mute_motion_passenger/features/profile/presentation/views/profile_screen_view.dart';
import 'package:mute_motion_passenger/features/requests/presentation/views/requests_view.dart';
import 'package:mute_motion_passenger/features/translator/presentation/views/Text_to_sign.dart';
import 'package:mute_motion_passenger/features/translator/presentation/views/translator_view.dart';

import '../../../../contactUs/presentation/views/contact_us_screenView.dart';
import '../../../../notification/presentation/views/notification_view.dart';

class NavDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Drawer(
      child: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(children: [
          Container(
            color: kPrimaryColor,
            height: 150,
            width: 380,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: (Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/woman.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 55, left: 8),
                        child: Text(
                          'Norhan Ahmed',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'norhan123@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: IconButton(
                      onPressed: () {
                        navigateTo(context, ProfileScreenView());
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.car_crash,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      navigateTo(context,RequestsScreenView());
                    },
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ),
                  title: Text(
                    'Requests',
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 30,
                  color: kPrimaryColor,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.history_toggle_off,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      navigateTo(context, HistoryScreenView());
                    },
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ),
                  title: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 30,
                  color: kPrimaryColor,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.camera_alt_rounded,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      navigateTo(context,TranslatorView());
                    },
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ),
                  title: Text(
                    'Translator',
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 30,
                  color: kPrimaryColor,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.map_outlined,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ),
                  title: Text(
                    'Map',
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 30,
                  color: kPrimaryColor,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.notifications_none_sharp,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      navigateTo(context, NotificationScreenView());
                    },
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ),
                  title: Text(
                    'Notification',
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 30,
                  color: kPrimaryColor,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.album_outlined,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      navigateTo(context, AboutUsScreenView());
                    },
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ),
                  title: Text(
                    'About us',
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Divider(
                  indent: 20,
                  endIndent: 30,
                  color: kPrimaryColor,
                  thickness: 1,
                  height: 2,
                ),
                ListTile(
                  leading: Icon(
                    Icons.contact_support,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      navigateTo(context, ContactUsScreenView());
                    },
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      size: 20,
                      color: kPrimaryColor,
                    ),
                  ),
                  title: Text(
                    'Contact us',
                    style: TextStyle(
                      fontSize: 15,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
