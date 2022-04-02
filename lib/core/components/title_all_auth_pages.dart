import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleAllAuthPages extends StatelessWidget {
  String title;
  double size;
   TitleAllAuthPages({Key? key,required this.title, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
