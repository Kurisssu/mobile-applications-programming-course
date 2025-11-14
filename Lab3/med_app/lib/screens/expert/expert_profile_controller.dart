import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import '../../list_items/list_items.dart';
import '../../widgets/home/top_expert_card/top_expert_card_list_item.dart';
import '../../widgets/expert_profile/expert_info_card/expert_profile_header_item.dart';
import '../../widgets/expert_profile/expert_appointment/expert_appointment_item.dart';
import '../../widgets/expert_profile/expert_timing/expert_timing_list_item.dart';
import '../../widgets/expert_profile/expert_location/expert_location_list_item.dart';
import '../../widgets/expert_profile/expert_map_item.dart';

class ExpertProfileController extends GetxController {
  final Rx<TopExpertCardItem?> expert = Rx<TopExpertCardItem?>(null);
  final RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    final arg = Get.arguments;
    if (arg is TopExpertCardItem) {
      expert.value = arg;
    }
    loadData();
  }

  Future<void> loadData() async {
    final String dataString = await rootBundle.loadString('assets/data/doctor.json');
    final Map<String, dynamic> jsonData = jsonDecode(dataString);

    items.clear();

    items.add(ExpertProfileHeaderItem.fromJson(jsonData));
    items.add(ExpertAppointmentItem.fromJson(jsonData));
    items.add(ExpertTimingListItem.fromJson(jsonData));
    items.add(ExpertLocationListItem.fromJson(jsonData));
    items.add(ExpertMapItem());
  }
}


