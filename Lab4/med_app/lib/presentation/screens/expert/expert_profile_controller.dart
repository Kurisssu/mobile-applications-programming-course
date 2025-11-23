import 'package:get/get.dart';
import 'package:med_app/domain/usecases/get_doctor_details.dart';

import '../../list_items/list_items.dart';
import '../../widgets/home/top_expert_card/top_expert_card_list_item.dart';
import '../../widgets/expert_profile/expert_info_card/expert_profile_header_item.dart';
import '../../widgets/expert_profile/expert_appointment/expert_appointment_item.dart';
import '../../widgets/expert_profile/expert_timing/expert_timing_list_item.dart';
import '../../widgets/expert_profile/expert_location/expert_location_list_item.dart';
import '../../widgets/expert_profile/expert_map_item.dart';

class ExpertProfileController extends GetxController {
  ExpertProfileController({GetDoctorDetailsUseCase? getDoctorDetailsUseCase})
      : _getDoctorDetailsUseCase =
            getDoctorDetailsUseCase ?? Get.find<GetDoctorDetailsUseCase>();

  final GetDoctorDetailsUseCase _getDoctorDetailsUseCase;
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
    try {
      final doctorDetails = await _getDoctorDetailsUseCase();

      items.clear();

      items.add(ExpertProfileHeaderItem.fromDoctor(doctorDetails.doctor));
      items.add(ExpertAppointmentItem.fromAppointment(doctorDetails.appointment));
      items.add(ExpertTimingListItem.fromTimings(doctorDetails.timing));
      items.add(ExpertLocationListItem.fromLocations(doctorDetails.locations));
      items.add(ExpertMapItem());
    } catch (error) {
      Get.snackbar(
        'Loading error',
        'Nu s-au putut incarca datele medicului. ${error.toString()}',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}


