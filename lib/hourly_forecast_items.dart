import 'package:flutter/material.dart';

class HourlyForecastItems extends StatelessWidget {
  final String temperature;
  final IconData icon;
  final String time;

  const HourlyForecastItems(
      {super.key, required this.temperature, required this.time,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        child: Container(
            width: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  time,
                  style:const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                Icon(icon),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '$temperature K',
                  style:const  TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white70),
                ),
              ],
            )));
  }
}
