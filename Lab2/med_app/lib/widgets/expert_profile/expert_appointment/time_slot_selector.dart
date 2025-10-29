import 'package:flutter/material.dart';

class TimeSlotSelector extends StatelessWidget {
  final List<String> slots;
  final String selectedTime;
  final ValueChanged<String> onTimeSelected;

  const TimeSlotSelector({
    super.key,
    required this.slots,
    required this.selectedTime,
    required this.onTimeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: slots.map((time) {
          final isSelected = selectedTime == time;
          return GestureDetector(
            onTap: () => onTimeSelected(time),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: isSelected ? Colors.teal[100] : Colors.teal[50],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                time,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.teal[500],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}