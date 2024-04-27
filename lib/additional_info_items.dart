import 'package:flutter/material.dart';

class AddInfoItems extends StatelessWidget {
  final IconData icon;
  final String label;
  final String readings;

  const AddInfoItems({
    super.key,
    required this.icon,
    required this.label,
    required this.readings
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
            color: Colors.black,
            elevation: 10,
            child: Container(
                width: 100,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.all(8),
                child:  Column(
                  children: [
                   Icon(
                     icon,
                   ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                     label,
                      style:const TextStyle(fontSize: 14, color: Colors.white54),
                    ),
                  const  SizedBox(
                      height: 8,
                    ),
                   Text(
                      readings,
                      style:const  TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white70),
                    ),
                  ],
                ))),

      ],
    );
  }
}
