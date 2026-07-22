import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/widgets/custom_image_assets.dart';

class HistoricalDoctorCard extends StatefulWidget {
  final String text;
  final Color colors;
  final Color backColors;
  const HistoricalDoctorCard({
    super.key,
    required this.text,
    required this.colors,
    required this.backColors,
  });

  @override
  State<HistoricalDoctorCard> createState() => _HistoricalDoctorCardState();
}

class _HistoricalDoctorCardState extends State<HistoricalDoctorCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          context.push('/details_appointment');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: Colors.grey.withValues(alpha: 0.2),
            ),
          ),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageAssets(height: 72, width: 72),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Text(
                                  "Marie Claire ",
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                ),
                                SizedBox(height: 12),
                                Text("Consultation"),
                              ],
                            ),

                            // SizedBox(width: 10),

                            // SizedBox(width: 25),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "10:30",
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: widget.backColors,
                            // backgroundColor: const Color.fromARGB(
                            //   255,
                            //   235,
                            //   252,
                            //   236,
                            // ),
                          ),
                          child: Text(
                            widget.text,
                            style: TextStyle(
                              color: widget.colors,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
