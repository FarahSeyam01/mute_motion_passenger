import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mute_motion_passenger/constants.dart';
import 'package:mute_motion_passenger/features/navdrawer/presentation/views/nav_drawer_view.dart';
import 'package:mute_motion_passenger/features/translator/presentation/views/translator_view.dart';

class TextToSignBody extends StatelessWidget {
  const TextToSignBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController TextController = TextEditingController();
    return Scaffold(
      drawer: NavDrawerView(),
      backgroundColor: Color(0xff003248),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('Text To Sign',style: GoogleFonts.comfortaa(fontSize: 20, color: Colors.white),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Form(
        child: Container(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin:
                          EdgeInsets.only(right: 22,left: 10),
                          padding: EdgeInsets.all(8),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: kPrimaryColor),
                    ),
                    child: TextFormField(
                    controller: TextController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Text can't be empty";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: "Text",
                      
                    ),
                  ),
                  ),
      
                  SizedBox(
                        height: 10,
                      ),
                  Padding(
                    padding: const EdgeInsets.only(right: 23, left: 13),
                    child: Center(child: Image.asset('assets/images/upDown.png')),
                  ),
                  SizedBox(
                        height: 10,
                      ),
                  Container(
                    margin:
                          EdgeInsets.only(right: 22,left: 10),
                          padding: EdgeInsets.all(8),
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: kPrimaryColor),
                    ),
                    child: Icon(Icons.image,size: 68, color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                        height: 50,
                      ),
                  Container(

                    margin:
                          EdgeInsets.only(right: 22,left: 10),
                          //padding: EdgeInsets.all(8),
                  width: double.infinity,
                  height: 58,
                  decoration: BoxDecoration(
                      color: const Color(0xff003248),
                      borderRadius: BorderRadius.circular(15)),
                  child: MaterialButton(
                      onPressed: (){
                        navigateTo(context, TranslatorView(),);
                      },
                      child:  Text(
                        "Done",
                        style: GoogleFonts.comfortaa(fontSize: 20, color: Colors.white),
                      )),
                ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}