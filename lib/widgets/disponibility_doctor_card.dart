import 'package:flutter/material.dart';

class DisponibilityDoctorCard extends StatefulWidget {
  final String textDay;
  final String textDate;
  final String textHourOne;
  final String textHourTwo;
  const DisponibilityDoctorCard({
    super.key,
    required this.textDay,
    required this.textDate,
    required this.textHourOne,
    required this.textHourTwo,
  });

  @override
  State<DisponibilityDoctorCard> createState() =>
      _DisponibilityDoctorCardState();
}

class _DisponibilityDoctorCardState extends State<DisponibilityDoctorCard> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade200),
        ),
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
                children: [Text(widget.textDay), Text(widget.textDate)],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(widget.textHourOne), Text(widget.textHourTwo)],
              ),
              // TextButton(
              //   onPressed: () {},
              //   child: isSwitched
              //       ? Text("Disponible", style: TextStyle(color: Colors.green))
              //       : Text("indisponible", style: TextStyle(color: Colors.grey)),
              // ),
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
      ),
    );
  }
}
