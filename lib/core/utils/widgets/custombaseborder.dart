import 'package:flutter/material.dart';
import 'package:mute_motion_passenger/constants.dart';
class CustomBorder extends StatelessWidget {
  const CustomBorder ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: Text('Screen Name',style: TextStyle(fontSize: 25, fontFamily: 'Lato', color: Colors.white),),
        leading: Icon(Icons.menu,color: Colors.white,),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding:const EdgeInsets.only(
          top: 20,
          left: 15,
        ),
        decoration:const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )
        ),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}