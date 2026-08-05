import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medicare_v2/widgets/custom_image_assets.dart';

class HistoricalCard extends StatefulWidget {
  final Color colors;
  final Color backColors;
  final String text;
  const HistoricalCard({
    super.key,
    required this.colors,
    required this.backColors,
    required this.text,
  });

  @override
  State<HistoricalCard> createState() => _HistoricalCardState();
}

class _HistoricalCardState extends State<HistoricalCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          context.push('/summary_page');
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: CustomImageAssets(height: 72, width: 72),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "21 Nov.2025 ",
                              style: Theme.of(context).textTheme.bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "10:30",
                              style: Theme.of(context).textTheme.bodyLarge
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                            ),
                            SizedBox(width: 25),
                            Icon(Icons.verified_outlined, color: widget.colors),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Text("Dr RUMI • Cardiologue")),
                          ],
                        ),
                        Row(
                          children: [
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
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
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
