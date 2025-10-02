import 'package:flutter/material.dart';
import 'package:med_app/widgets/home/featured_services.dart';
import 'package:med_app/widgets/home/top_expert_card.dart';
import 'package:med_app/widgets/home/top_experts_by_speciality_bar.dart';
import '../widgets/navbars/navbar_home.dart';
import '../widgets/search_bar.dart';
import '../widgets/home/compartments_info.dart';
import '../widgets/home/specialities_bar.dart';
import '../widgets/home/experts_bar.dart';
import '../widgets/home/medicines_bar.dart';

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
          children: const [
            HomeSearchBar(),
            CompartmentsInfo(),
            SpecialitiesBar(),
            ExpertsBar(),
            MedicinesBar(),
            FeaturedServices(),
            TopExpertCard(),
            TopExpertsBySpecialityBar(),
          ],
        ),
      ),
    );
  }
}