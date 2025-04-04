import 'package:flutter/material.dart';

Widget buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      const SizedBox(height: 8),
      Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: color)),
    ],
  );
}
