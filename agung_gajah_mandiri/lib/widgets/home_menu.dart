import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({
    required this.menu,
    required this.img,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  final String menu;
  final String img;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 100,
        width: 90,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/$img'),
              const SizedBox(height: 4),
              Text(menu),
            ]),
      ),
    );
  }
}
