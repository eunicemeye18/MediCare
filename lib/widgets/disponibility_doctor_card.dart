import 'package:flutter/material.dart';

class DisponibilityDoctorCard extends StatefulWidget {
  final String text;
  const DisponibilityDoctorCard({super.key, required this.text});

  @override
  State<DisponibilityDoctorCard> createState() =>
      _DisponibilityDoctorCardState();
}

class _DisponibilityDoctorCardState extends State<DisponibilityDoctorCard> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          shape: LinearBorder(side: BorderSide(width: 2)),
          side: BorderSide(width: 2),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(widget.text), Text("2h00")],
            ),
            SizedBox(width: 40),
            TextButton(
              onPressed: () {},
              child: isSwitched
                  ? Text("Disponible", style: TextStyle(color: Colors.green))
                  : Text("indisponible", style: TextStyle(color: Colors.grey)),
            ),
            Spacer(),
            Switch(
              value: isSwitched,
              inactiveThumbColor: Colors.grey,
              activeThumbColor: Colors.white,
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.white70,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
