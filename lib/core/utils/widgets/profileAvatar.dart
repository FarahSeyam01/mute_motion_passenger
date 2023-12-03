import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, required this.radius});
  final double radius;
  
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
                  radius: radius,
                  
                 //backgroundImage: AssetImage('assets/images/driver.png'),
                );
  }
}