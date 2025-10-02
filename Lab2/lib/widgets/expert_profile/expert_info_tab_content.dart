import 'package:flutter/material.dart';
import 'package:med_app/widgets/expert_profile/expert_appointment.dart';

import 'expert_location.dart';
import 'expert_map.dart';
import 'expert_timing.dart';

class ExpertInfoTabContent extends StatelessWidget {
  const ExpertInfoTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpertAppointment(),
        ExpertTiming(),
        ExpertLocation(),
        const ExpertMap(),
      ],
    );
  }
}
