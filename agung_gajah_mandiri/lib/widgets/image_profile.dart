import 'package:flutter/material.dart';

class ImageProfile extends StatelessWidget {
  ImageProfile({this.img = '', Key? key}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(52),
          border: Border.all(color: Colors.grey, width: 1)),
      child: img.isEmpty
          ? Icon(Icons.people_alt_sharp)
          : Image.asset('images/$img'),
    );
  }
}
