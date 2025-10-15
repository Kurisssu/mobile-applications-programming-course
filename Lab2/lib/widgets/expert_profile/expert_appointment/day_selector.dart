import 'package:flutter/material.dart';

class DaySelector extends StatelessWidget {
  final List<Map<String, dynamic>> days;
  final String selectedDay;
  final ValueChanged<String> onDaySelected;

  const DaySelector({
    super.key,
    required this.days,
    required this.selectedDay,
    required this.onDaySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: days.map((day) {
          final label = day["label"] as String;
          final slots = day["slots"] as int;
          final isSelected = selectedDay == label;

          return Expanded(
            child: GestureDetector(
              onTap: () => onDaySelected(label),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: label,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: slots == 0 ? " (no slot)" : " ($slots slots)",
                          style: TextStyle(
                            color: slots == 0 ? Colors.grey[600] : Colors.blue[700],
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 3,
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.teal[500] : Colors.teal[50],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}