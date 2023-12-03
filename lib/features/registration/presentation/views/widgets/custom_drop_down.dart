import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';

class CustomDropDown extends StatefulWidget {
   CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
   String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: DropdownButton(
                            isExpanded: true,
                              hint: const Padding(
                                padding:  EdgeInsets.only( left: 8.0),
                                child: Text('Gender'),
                              ),
                              value: dropdownValue,
                              /* icon: const Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Icon(Icons.arrow_downward),
                              ), */
                              elevation: 0,
                              style:
                                  GoogleFonts.comfortaa(color: kPrimaryColor),
                              
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: [
                                DropdownMenuItem(
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left :8.0),
                                    child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.male),
                                        Text("Male"),
                                      ],
                                    ),
                                  ),
                                  value: "Male",
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left :8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.female),
                                        Text("Female"),
                                      ],
                                    ),
                                  ),
                                  value: "Female",
                                ),
                              ]),
                        ),
                      );
  }
}