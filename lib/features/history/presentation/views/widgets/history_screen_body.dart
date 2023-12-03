import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/navdrawer/presentation/views/nav_drawer_view.dart';

class HistoryScreenBody extends StatelessWidget {
  const HistoryScreenBody({super.key});

 @override
  Widget build(BuildContext context) {
    int num = 1;

    return Scaffold(
      drawer: NavDrawerView(),
      backgroundColor: Color(0xff003248),
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
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 44,
                  width: 340,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                          ),
                          Text(
                            '${num}',
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Transport Request',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    margin: EdgeInsets.only(right: 22, left: 15),
                    padding: EdgeInsets.all(9),
                    height: 230,
                    width: 338,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kPrimaryColor),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Driver:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Hassan Mahmoud',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(4.8)',
                              style: TextStyle(
                                fontFamily: ' Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: const [
                            Text(
                              'From:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Elfath Street-Nasr City-Cairo',
                              style:  TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'To:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Salah Eldeen Street-Elzamalek',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'Date:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9:20 - 25 April',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          indent: 10,
                          endIndent: 10,
                          color: kPrimaryColor,
                          thickness: 1,
                          height: 2,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cost:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'EGP 120',
                              style: TextStyle(
                                color: Colors.green[700],
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 44,
                  width: 340,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                          ),
                          Text(
                            '${++num}',
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'City to City Request',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Comfortaa',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    margin: EdgeInsets.only(right: 22, left: 15),
                    padding: EdgeInsets.all(9),
                    height: 260,
                    width: 338,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kPrimaryColor),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Driver:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Ahmed Essam',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '(4.8)',
                              style: TextStyle(
                                fontFamily: ' Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'From:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Elfath Street-Nasr City',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'To:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Salah Eldeen Street-Elzamalek',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'No of passengers:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '7',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'No of Bags:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '5',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Text(
                              'Date:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '9:20 - 25 April',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          indent: 10,
                          endIndent: 10,
                          color: kPrimaryColor,
                          thickness: 1,
                          height: 2,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Cost:',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'Comfortaa',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'EGP 120',
                              style: TextStyle(
                                color: Colors.green[700],
                                fontFamily: 'Comfortaa',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}