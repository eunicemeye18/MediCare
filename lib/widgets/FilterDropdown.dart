import 'package:flutter/material.dart';

class Filterdropdown extends StatefulWidget {
  final String hint;
  final List<String> values;
  // final ValueChanged<String?> onChanged;

  const Filterdropdown({
    super.key,
    required this.values,
    required this.hint,
    // required this.onChanged,
  });

  @override
  State<Filterdropdown> createState() => _FilterdropdownState();
}

class _FilterdropdownState extends State<Filterdropdown> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        // color: Theme.of(context).colorScheme.inversePrimary,
        color: Colors.white,
        border: BoxBorder.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Center(
        child: DropdownButton(
          items: widget.values.map((String item) {
            return DropdownMenuItem(value: item, child: Text(item));
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
              if (newValue == "Choisir une date") {
                showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030),
                );
              }
            });
          },
          value: selectedValue,
          borderRadius: BorderRadius.circular(10),
          icon: Icon(Icons.keyboard_arrow_down),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          underline: Container(),
          hint: Text(widget.hint, style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
