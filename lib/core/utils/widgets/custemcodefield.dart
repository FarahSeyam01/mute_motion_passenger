import 'package:flutter/material.dart';

class custemcodefield extends StatelessWidget{
  const custemcodefield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      //color: Color(0xD9D9D9),
      width: 80,height: 78,
      decoration: BoxDecoration(color: Color(0xD9D9D9),
          borderRadius:
          BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color:
                Colors.black12,
                blurRadius: 1,
                spreadRadius: 2
            )
          ]
      ),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: TextField(),
      ),);
  }
}