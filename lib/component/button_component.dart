import 'package:flutter/material.dart';
import 'package:task2_unictive/component/color.dart';

class ButtonComponent extends StatefulWidget {
  final String name;
  final VoidCallback onTapModify;
  const ButtonComponent(
      {super.key, required this.name, required this.onTapModify});

  @override
  State<ButtonComponent> createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTapModify,
      child: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: GlobalColors.backGroundColor,
        ),
        child: Center(
          child: Text(
            widget.name,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
