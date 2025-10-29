import 'package:flutter/material.dart';
import '../widgets/expert_profile/expert_info_card/expert_profile.dart';
import '../widgets/expert_profile/expert_profile_tabs.dart';
import '../widgets/navbars/navbar_expert_profile.dart';

class ExpertProfileScreen extends StatelessWidget {
  const ExpertProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBarExpertProfile(context: context, title: ''),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ExpertProfile(),
            SizedBox(height: 20),
            ExpertProfileTabs(),
          ],
        ),
      ),
    );
  }
}