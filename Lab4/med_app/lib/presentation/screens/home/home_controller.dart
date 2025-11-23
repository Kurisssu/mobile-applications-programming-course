import 'package:get/get.dart';
import 'package:med_app/domain/usecases/get_feed.dart';

import '../../list_items/list_items.dart';
import '../../widgets/home/compartment_cards/compartment_list_item.dart';
import '../../widgets/navbars/navbar_home/navbar_home_list_item.dart';
import '../../widgets/search_bar/home_search_bar_list_item.dart';
import '../../widgets/home/relevant_specialities_bar/relevant_specialities_list_item.dart';
import '../../widgets/home/specialists_bar/specialists_list_item.dart';
import '../../widgets/home/featured_services_bar/featured_services_list_item.dart';
import '../../widgets/home/medicines_bar/medicines_list_item.dart';
import '../../widgets/home/top_expert_card/top_expert_card_list_item.dart';
import '../../widgets/home/top_experts_by_speciality_bar/top_experts_by_speciality_list_item.dart';

class HomeController extends GetxController {
  HomeController({GetFeedUseCase? getFeedUseCase})
      : _getFeedUseCase = getFeedUseCase ?? Get.find<GetFeedUseCase>();

  final GetFeedUseCase _getFeedUseCase;
  RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    try {
      final feed = await _getFeedUseCase();

      items.clear();

      final navbar = HomeNavBarListItem.fromFeedUser(feed.user);
      items.add(navbar);

      items.add(HomeSearchBarListItem());

      final compartments = CompartmentListItem.fromActions(feed.actions);
      items.add(compartments);

      final RelevantSpecialitiesListItem specialities =
          RelevantSpecialitiesListItem.fromSpecialities(feed.specialities);
      items.add(specialities);

      final SpecialistsListItem specialistsItem = SpecialistsListItem.fromSpecialists(
        feed.specialists,
      );
      items.add(specialistsItem);

      // Defaults (non-JSON) for remaining sections
      items.add(FeaturedServicesListItem.defaults());
      items.add(MedicinesListItem.defaults());
      items.add(TopExpertCardItem.defaults());
      items.add(TopExpertsBySpecialityListItem.defaults());
    } catch (error) {
      Get.snackbar(
        'Loading error',
        'Nu s-au putut incarca datele pentru pagina principala. ${error.toString()}',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}