import 'package:flutter/material.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
        image: AssetImage('assets/images/fastFood.png'),
        fit: BoxFit.cover,
      )),
    );
  }
}
