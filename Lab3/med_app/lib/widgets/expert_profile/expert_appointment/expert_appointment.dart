import 'package:flutter/material.dart';
import 'appointment_header.dart';
import 'clinic_info_row.dart';
import 'day_selector.dart';
import 'time_slot_selector.dart';
import 'expert_appointment_item.dart';

class ExpertAppointment extends StatefulWidget {
  const ExpertAppointment({super.key, required this.item});

  final ExpertAppointmentItem item;

  @override
  State<ExpertAppointment> createState() => _ExpertAppointmentState();
}

class _ExpertAppointmentState extends State<ExpertAppointment> {
  String selectedDay = "";
  String selectedTime = "";

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
          AppointmentHeader(title: widget.item.type, price: widget.item.feeText),
          ClinicInfoRow(
            clinicName: widget.item.clinic.name,
            location: widget.item.clinic.location,
            moreClinicsText: "${widget.item.moreClinics.length} More clinic",
            onMoreClinicsTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Text(
              widget.item.waitTime,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 12.5,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(height: 2, color: Colors.grey[200]),
          DaySelector(
            days: widget.item.availableDays
                .map((d) => {"label": d.day, "slots": d.slots.length})
                .toList(),
            selectedDay: selectedDay,
            onDaySelected: (day) {
              setState(() {
                selectedDay = day;
              });
            },
          ),
          TimeSlotSelector(
            slots: (widget.item.availableDays
                    .firstWhere((e) => e.day == selectedDay, orElse: () => const AppointmentDaySlots(day: '', slots: []))
                    .slots),
            selectedTime: selectedTime,
            onTimeSelected: (time) {
              setState(() {
                selectedTime = time;
              });
            },
          ),
        ],
      ),
    );
  }
}