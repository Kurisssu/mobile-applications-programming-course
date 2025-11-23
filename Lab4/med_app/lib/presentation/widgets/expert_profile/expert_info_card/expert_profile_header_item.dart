import 'package:flutter/widgets.dart';
import 'package:med_app/domain/entities/doctor_details.dart';
import 'package:med_app/presentation/list_items/list_items.dart';

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

  factory ExpertProfileHeaderItem.fromDoctor(Doctor doctor) {
    return ExpertProfileHeaderItem(
      profileImage: NetworkImage(doctor.profileImageUrl),
      name: doctor.name,
      speciality: doctor.speciality,
      qualification: doctor.qualification,
      rating: doctor.rating,
      reviewsCount: doctor.reviewsCount,
      yearsOfExperience: doctor.yearsOfExperience,
      patientsTreated: doctor.patientsTreated,
    );
  }
}






