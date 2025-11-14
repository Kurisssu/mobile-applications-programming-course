import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
  RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    final String dataString = await rootBundle.loadString('assets/data/medicine.json');
    final Map<String, dynamic> jsonData = jsonDecode(dataString);

    items.clear();

    final navbar = HomeNavBarListItem.fromJson(jsonData['user']);
    items.add(navbar);

    items.add(HomeSearchBarListItem());

    final compartments = CompartmentListItem.fromJson(jsonData['actions'] as List<dynamic>);
    items.add(compartments);

    final RelevantSpecialitiesListItem specialities = RelevantSpecialitiesListItem.fromJson(
      jsonData['specialities'] as List<dynamic>,
    );
    items.add(specialities);

    final SpecialistsListItem specialistsItem = SpecialistsListItem.fromJson(
      jsonData['specialists'] as List<dynamic>,
    );
    items.add(specialistsItem);

    // Defaults (non-JSON) for remaining sections
    items.add(FeaturedServicesListItem.defaults());
    items.add(MedicinesListItem.defaults());
    items.add(TopExpertCardItem.defaults());
    items.add(TopExpertsBySpecialityListItem.defaults());
  }
}