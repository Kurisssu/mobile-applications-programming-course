import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:med_app/widgets/search_bar/home_search_bar_list_item.dart';
import '../../widgets/home/compartment_cards/compartment_list_item.dart';
import '../../widgets/home/compartment_cards/compartments_info.dart';
import '../../widgets/navbars/navbar_home/navbar_home.dart';
import '../../widgets/navbars/navbar_home/navbar_home_list_item.dart';
import '../../widgets/search_bar/search_bar.dart';
import 'home_controller.dart';
import '../../widgets/home/relevant_specialities_bar/relevant_specialities_list_item.dart';
import '../../widgets/home/relevant_specialities_bar/relevant_specialities_bar.dart';
import '../../widgets/home/specialists_bar/specialists_list_item.dart';
import '../../widgets/home/specialists_bar/specialists_bar.dart';
import '../../widgets/home/featured_services_bar/featured_services_list_item.dart';
import '../../widgets/home/featured_services_bar/featured_services.dart';
import '../../widgets/home/medicines_bar/medicines_list_item.dart';
import '../../widgets/home/medicines_bar/medicines_bar.dart';
import '../../widgets/home/top_expert_card/top_expert_card_list_item.dart';
import '../../widgets/home/top_expert_card/top_expert_card.dart';
import '../../widgets/home/top_experts_by_speciality_bar/top_experts_by_speciality_list_item.dart';
import '../../widgets/home/top_experts_by_speciality_bar/top_experts_by_speciality_bar.dart';
import '../expert/expert_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => HomeController());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.zero,
        child: Container(
          color: Colors.white,
          child: Obx(
              () => ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.items[index];
                  if (item is HomeNavBarListItem) {
                    return HomeNavBar(item: item);
                  } else if (item is HomeSearchBarListItem) {
                    return HomeSearchBar(item: item);
                  } else if (item is CompartmentListItem) {
                    return CompartmentsInfo(item: item);
                  } else if (item is RelevantSpecialitiesListItem) {
                    return RelevantSpecialitiesBar(item: item);
                  } else if (item is SpecialistsListItem) {
                    return SpecialistsBar(item: item);
                  } else if (item is FeaturedServicesListItem) {
                    return FeaturedServices(item: item);
                  } else if (item is MedicinesListItem) {
                    return MedicinesBar(item: item);
                  } else if (item is TopExpertCardItem) {
                    return TopExpertCard(
                      expert: item,
                      onTap: () => Get.to(() => const ExpertProfileScreen(), arguments: item),
                    );
                  } else if (item is TopExpertsBySpecialityListItem) {
                    return TopExpertsBySpecialityBar(item: item);
                  }
                  return Text('Not Found');
                },
              ),
          ),
        ),
      ),
    );
  }
}