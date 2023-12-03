import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/history/presentation/views/widgets/history_screen_empty_body.dart';
import 'package:mute_motion_passenger/features/profile/presentation/views/profile_screen_view.dart';

import '../../../../requests/presentation/views/widgets/requsts.dart';

class MainMenuScreenBody extends StatefulWidget {
  const MainMenuScreenBody({super.key});

  @override
  State<MainMenuScreenBody> createState() => _MainMenuScreenBodyState();
}

class _MainMenuScreenBodyState extends State<MainMenuScreenBody> {
 int _selectedIndex = 0;
  final _screens = [
    Requests(),
    HistoryScreenEmptyBody(),
    ProfileScreenView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          iconSize: 25,
          backgroundColor: kPrimaryColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.car_crash_sharp),
              label: "Requsts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_rounded),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}