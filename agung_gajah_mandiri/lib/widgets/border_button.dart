import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  BorderButton({
    required this.button,
    required this.onClick,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  final String button;
  final VoidCallback onClick;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.blueAccent : Colors.grey.shade200, width: 0.5),
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        alignment: Alignment.center,
        child: Text(button,
            style: const TextStyle(fontSize: 12, color: Colors.black54)),
      ),
    );
  }
}
