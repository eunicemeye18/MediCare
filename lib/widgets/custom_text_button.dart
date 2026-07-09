import 'package:flutter/material.dart';

class CustomTextButton extends StatefulWidget {
  final String text;
  final Color color;
  const CustomTextButton({super.key, required this.text, required this.color});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: widget.color),
      child: Text(widget.text),
    );
  }
}
