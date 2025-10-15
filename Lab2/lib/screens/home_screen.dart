import 'package:flutter/material.dart';
import 'package:med_app/widgets/home/featured_services_bar/featured_services.dart';
import 'package:med_app/widgets/home/top_expert_card/top_expert_card.dart';
import 'package:med_app/widgets/home/top_experts_by_speciality_bar/top_experts_by_speciality_bar.dart';
import '../widgets/home/top_expert_card/top_expert_data.dart';
import '../widgets/navbars/navbar_home.dart';
import '../widgets/search_bar.dart';
import '../widgets/home/compartment_cards/compartments_info.dart';
import '../widgets/home/relevant_specialities_bar/relevant_specialities_bar.dart';
import '../widgets/home/specialists_bar/specialists_bar.dart';
import '../widgets/home/medicines_bar/medicines_bar.dart';
import '../screens/expert_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBarHome(title: ''),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeSearchBar(),
            const CompartmentsInfo(),
            const RelevantSpecialitiesBar(),
            const SpecialistsBar(),
            const MedicinesBar(),
            const FeaturedServices(),
            TopExpertCard(
              expert: topExpert,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpertProfileScreen()),
                );
              },
            ),
            const TopExpertsBySpecialityBar(),
          ],
        ),
      ),
    );
  }
}