import 'package:flutter/material.dart';
const kPrimaryColor = Color(0xff003248);
Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20,
        end: 20,
      ),
      child: Container(
        width: double.infinity,
        height: 1,
        color: kPrimaryColor,
      ),
    );

void navigateTo(context, widget) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

Widget defaultFormFeild({
  required TextEditingController? controller,
  required TextInputType? type,
  int? min,
  int? max,
  Function? onSubmit,
  Function? onChange,
  Function? onTap,
  bool isClickable = true,
  Function? validate,
  required String? label,
  // IconData? prefix,
  IconData? suffix,
  bool isPassword = false,
  Function? iconButton,
}) =>
    TextFormField(
      onFieldSubmitted: (s) {
        onSubmit!(s);
      },
      validator: (data) {
        if (data!.isEmpty) {
          return 'Please Enter Your Data';
        }
      },
      enabled: isClickable,
      controller: controller,
      keyboardType: type,
      minLines: min,
      maxLines: max,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelStyle: TextStyle(
          fontFamily: 'comfortaa',
          fontSize: 15,
          color: kPrimaryColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        labelText: label,
        // prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                icon: Icon(suffix, color: kPrimaryColor, size: 20),
                onPressed: () {
                  iconButton!();
                },
              )
            : null,
      ),
    );


 //Navigator.of(context).push(MaterialPageRoute(builder: (context) => TextToSign()));
  //Navigator.of(context).pushReplacement(MaterialPageRoute(
        //                builder: (context) => CreateProfileScreenView()));