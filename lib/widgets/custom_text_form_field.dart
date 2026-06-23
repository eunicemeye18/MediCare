import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextFormField({super.key, required this.controller, required this.hintText});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: TextFormField(
        
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintText,
          
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withValues(alpha: 0.2)),
            borderRadius: BorderRadius.circular(15)
          ),
          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.5)), borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
