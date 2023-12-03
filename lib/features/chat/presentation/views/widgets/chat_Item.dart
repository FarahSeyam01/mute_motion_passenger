import 'package:flutter/material.dart';

import '../../../../../core/styles.dart';

class chatItem extends StatelessWidget {
  const chatItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: TextButton(
        onPressed: (){},
        child: Text(text,
        overflow: TextOverflow.ellipsis,
         style: Styles.textStyle12,
        ),
      ),
    );
  }
}