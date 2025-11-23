import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/expert_profile/expert_info_card/expert_profile.dart';
import '../../widgets/navbars/navbar_expert/navbar_expert_profile.dart';
import 'expert_profile_controller.dart';
import '../../widgets/expert_profile/expert_info_card/expert_profile_header_item.dart';
import '../../widgets/expert_profile/expert_appointment/expert_appointment_item.dart';
import '../../widgets/expert_profile/expert_appointment/expert_appointment.dart';
import '../../widgets/expert_profile/expert_timing/expert_timing_list_item.dart';
import '../../widgets/expert_profile/expert_timing/expert_timing.dart';
import '../../widgets/expert_profile/expert_location/expert_location_list_item.dart';
import '../../widgets/expert_profile/expert_location/expert_location.dart';
import '../../widgets/expert_profile/expert_map_item.dart';
import '../../widgets/expert_profile/expert_map.dart';

class ExpertProfileScreen extends StatefulWidget {
  const ExpertProfileScreen({super.key});

  @override
  State<ExpertProfileScreen> createState() => _ExpertProfileScreenState();
}

class _ExpertProfileScreenState extends State<ExpertProfileScreen> {
  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => ExpertProfileController());
  }

  @override
  Widget build(BuildContext context) {
    final ExpertProfileController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBarExpertProfile(context: context, title: controller.expert.value?.name ?? ''),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, index) {
            final item = controller.items[index];
            if (item is ExpertProfileHeaderItem) {
              return ExpertProfile(item: item);
            } else if (item is ExpertAppointmentItem) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ExpertAppointment(item: item),
              );
            } else if (item is ExpertTimingListItem) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: ExpertTiming(item: item),
              );
            } else if (item is ExpertLocationListItem) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: ExpertLocation(item: item),
              );
            } else if (item is ExpertMapItem) {
              return const ExpertMap();
            }
            return const SizedBox.shrink();
          },
        );
      }),
    );
  }
}