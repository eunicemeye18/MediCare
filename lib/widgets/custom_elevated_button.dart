import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  final String text;
  const CustomElevatedButton({super.key, required this.text});

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: Color.fromRGBO(5, 138, 179, 1.0),
        padding: EdgeInsets.only(right: 120, left: 120, top: 18, bottom: 18),
      ),
      child: Text(widget.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
 