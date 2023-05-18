import 'package:flutter/material.dart';

class CustomDateRow extends StatelessWidget {
  DateTime selectedDate;
  Function() onTap;

  CustomDateRow({
    required this.selectedDate,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${selectedDate.year}/${selectedDate.month}/${selectedDate.day}',
            style: const TextStyle(fontSize: 18),
          ),
          IconButton(
            onPressed: () => onTap(),
            icon: const Icon(Icons.date_range),
          ),
        ],
      ),
    );
  }
}