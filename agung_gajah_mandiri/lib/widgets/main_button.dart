import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    required this.button,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  final String button;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54, width: 0.5),
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueAccent,
        ),
        alignment: Alignment.center,
        child:
            Text(button, style: const TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
