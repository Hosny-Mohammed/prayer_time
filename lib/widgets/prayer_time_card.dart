import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrayerTimeCard extends StatelessWidget {
  final String prayerName;
  final String prayerTime;

  const PrayerTimeCard({super.key, required this.prayerName, required this.prayerTime});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      shadowColor: Colors.black45,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              prayerName,
              style: const TextStyle(fontSize: 20, fontWeight:FontWeight.bold),
            ),
            const SizedBox(height: 20,),
            Text(
              prayerTime,
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
