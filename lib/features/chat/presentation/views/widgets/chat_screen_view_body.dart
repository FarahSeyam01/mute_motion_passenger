import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/core/styles.dart';
import 'package:mute_motion_passenger/core/utils/widgets/customtextfield.dart';

import 'chat_Item.dart';

class ChatScreenViewBody extends StatelessWidget {
  ChatScreenViewBody({super.key});
  TextEditingController msgController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            iconSize: 30,
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kPrimaryColor,
            )),
        title: Text(
          'Driver',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            color: kPrimaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomSheet: Container(
        color: kPrimaryColor,
        height: 160,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                 
                  children: const [
                    chatItem(text: 'Hello'),
                    SizedBox(
                      width: 5,
                    ),
                    chatItem(text: 'Where are you'),
                    SizedBox(
                      width: 5,
                    ),
                    chatItem(text: "Don't be late, I'm waiting for you"),
                    SizedBox(
                      width: 5,
                    ),
                    chatItem(text: 'I\'m coming'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    controller: msgController,
                    decoration: InputDecoration(
                      hintText: 'Message',
                      hintStyle: GoogleFonts.comfortaa(
                        color: Colors.black.withOpacity(0.65),
                        fontSize: 12,
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const FaIcon(
                      FontAwesomeIcons.solidPaperPlane,
                      color: Colors.white,
                    ))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
