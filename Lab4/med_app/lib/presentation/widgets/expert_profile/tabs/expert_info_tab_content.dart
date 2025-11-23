import 'package:flutter/material.dart';
import 'package:med_app/presentation/widgets/expert_profile/expert_appointment/expert_appointment.dart';
import 'package:med_app/presentation/widgets/expert_profile/expert_appointment/expert_appointment_item.dart';
import '../expert_location/expert_location.dart';
import '../expert_location/expert_location_list_item.dart';
import '../expert_map.dart';
import '../expert_timing/expert_timing.dart';
import '../expert_timing/expert_timing_list_item.dart';

class ExpertInfoTabContent extends StatelessWidget {
  const ExpertInfoTabContent({super.key, this.appointmentItem, this.timingItem, this.locationItem});

  final ExpertAppointmentItem? appointmentItem;
  final ExpertTimingListItem? timingItem;
  final ExpertLocationListItem? locationItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (appointmentItem != null) ExpertAppointment(item: appointmentItem!),
        if (timingItem != null) ExpertTiming(item: timingItem!),
        if (locationItem != null) ExpertLocation(item: locationItem!),
        const ExpertMap(),
      ],
    );
  }
}
