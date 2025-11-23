import 'package:flutter/widgets.dart';
import 'package:med_app/list_items/list_items.dart';

class ExpertProfileHeaderItem extends ListItem {
  final ImageProvider profileImage;
  final String name;
  final String speciality;
  final String qualification;
  final double rating;
  final int reviewsCount;
  final int yearsOfExperience;
  final int patientsTreated;

  ExpertProfileHeaderItem({
    required this.profileImage,
    required this.name,
    required this.speciality,
    required this.qualification,
    required this.rating,
    required this.reviewsCount,
    required this.yearsOfExperience,
    required this.patientsTreated,
  });

  factory ExpertProfileHeaderItem.fromJson(Map<String, dynamic> json) {
    final d = json['doctor'] as Map<String, dynamic>;
    return ExpertProfileHeaderItem(
      profileImage: NetworkImage(d['profile_image'] ?? ''),
      name: d['name'] ?? '',
      speciality: d['speciality'] ?? '',
      qualification: d['qualification'] ?? '',
      rating: (d['rating'] as num).toDouble(),
      reviewsCount: d['reviews_count'] as int,
      yearsOfExperience: d['years_of_experience'] as int,
      patientsTreated: d['patients_treated'] as int,
    );
  }
}






