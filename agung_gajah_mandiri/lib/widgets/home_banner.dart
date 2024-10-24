import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({required this.img, Key? key}) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/$img'),
    );
  }
}
