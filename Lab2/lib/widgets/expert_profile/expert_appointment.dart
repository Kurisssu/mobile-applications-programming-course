import 'package:flutter/material.dart';

class ExpertAppointment extends StatefulWidget {
  const ExpertAppointment({super.key});

  @override
  State<ExpertAppointment> createState() => _ExpertAppointmentState();
}

class _ExpertAppointmentState extends State<ExpertAppointment> {
  String selectedDay = "Tomorrow";
  String selectedTime = "";

  final List<Map<String, dynamic>> days = [
    {"label": "Today", "slots": 0},
    {"label": "Tomorrow", "slots": 20},
    {"label": "17 Oct", "slots": 12},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.teal[50],
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "In-Clinic Appointment",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  "৳1,000",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: Colors.teal[800],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Evercare Hospital Ltd.",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Bashundhara, Dhaka",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.teal[600],
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "2 More clinic",
                      style: TextStyle(
                        color: Colors.blue[400],
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Text(
              "20 mins or less wait time",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
                fontWeight: FontWeight.w500,
                fontSize: 12.5,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(height: 2, color: Colors.grey[200]),
          SizedBox(
            height: 70,
            child: Row(
              children: days.map((day) {
                final label = day["label"] as String;
                final slots = day["slots"] as int;
                final isSelected = selectedDay == label;

                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDay = label;
                      });
                    },
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
                              if (slots == 0)
                                TextSpan(
                                  text: " (no slot)",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 13,
                                  ),
                                )
                              else
                                TextSpan(
                                  text: " ($slots slots)",
                                  style: TextStyle(
                                    color: Colors.blue[700],
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 16, left: 16, right: 16),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _buildTimeSlot("06:00 - 06:30"),
                _buildTimeSlot("06:30 - 07:00"),
                _buildTimeSlot("07:00 - 07:30"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSlot(String text) {
    bool isSelected = selectedTime == text;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTime = text;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal[100] : Colors.teal[50],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.teal[500],
          ),
        ),
      ),
    );
  }
}