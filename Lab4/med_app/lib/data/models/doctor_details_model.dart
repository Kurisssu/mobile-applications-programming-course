import 'package:med_app/domain/entities/doctor_details.dart';

class DoctorDetailsModel extends DoctorDetails {
  DoctorDetailsModel({
    required DoctorModel doctor,
    required AppointmentModel appointment,
    required List<DoctorTimingModel> timing,
    required List<DoctorLocationModel> locations,
    required List<String> tabs,
  }) : super(
          doctor: doctor,
          appointment: appointment,
          timing: timing,
          locations: locations,
          tabs: tabs,
        );

  factory DoctorDetailsModel.fromJson(Map<String, dynamic> json) {
    return DoctorDetailsModel(
      doctor: DoctorModel.fromJson(json['doctor'] as Map<String, dynamic>),
      appointment: AppointmentModel.fromJson(json['appointment'] as Map<String, dynamic>),
      timing: (json['timing'] as List<dynamic>)
          .map((dynamic item) => DoctorTimingModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      locations: (json['locations'] as List<dynamic>)
          .map((dynamic item) => DoctorLocationModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      tabs: (json['tabs'] as List<dynamic>).map((dynamic item) => item as String).toList(),
    );
  }
}

class DoctorModel extends Doctor {
  DoctorModel({
    required super.id,
    required super.name,
    required super.speciality,
    required super.qualification,
    required super.profileImageUrl,
    required super.rating,
    required super.reviewsCount,
    required super.yearsOfExperience,
    required super.patientsTreated,
    required super.isFavorite,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'] as int,
      name: json['name'] ?? '',
      speciality: json['speciality'] ?? '',
      qualification: json['qualification'] ?? '',
      profileImageUrl: json['profile_image'] ?? '',
      rating: (json['rating'] as num).toDouble(),
      reviewsCount: json['reviews_count'] as int,
      yearsOfExperience: json['years_of_experience'] as int,
      patientsTreated: json['patients_treated'] as int,
      isFavorite: json['is_favorite'] as bool? ?? false,
    );
  }
}

class AppointmentModel extends Appointment {
  AppointmentModel({
    required super.type,
    required super.fee,
    required super.currency,
    required HospitalModel hospital,
    required List<AvailableDayModel> availableDays,
  }) : super(
          hospital: hospital,
          availableDays: availableDays,
        );

  factory AppointmentModel.fromJson(Map<String, dynamic> json) {
    return AppointmentModel(
      type: json['type'] ?? '',
      fee: (json['fee'] as num).toInt(),
      currency: json['currency'] ?? '',
      hospital: HospitalModel.fromJson(json['hospital'] as Map<String, dynamic>),
      availableDays: (json['available_days'] as List<dynamic>)
          .map((dynamic item) => AvailableDayModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class HospitalModel extends Hospital {
  HospitalModel({
    required super.name,
    required super.location,
    required super.waitTime,
    required List<ClinicModel> moreClinics,
  }) : super(moreClinics: moreClinics);

  factory HospitalModel.fromJson(Map<String, dynamic> json) {
    return HospitalModel(
      name: json['name'] ?? '',
      location: json['location'] ?? '',
      waitTime: json['wait_time'] ?? '',
      moreClinics: (json['more_clinics'] as List<dynamic>)
          .map((dynamic item) => ClinicModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class ClinicModel extends Clinic {
  ClinicModel({
    required super.name,
    required super.location,
  });

  factory ClinicModel.fromJson(Map<String, dynamic> json) {
    return ClinicModel(
      name: json['name'] ?? '',
      location: json['location'] ?? '',
    );
  }
}

class AvailableDayModel extends AvailableDay {
  AvailableDayModel({
    required super.day,
    required List<String> slots,
  }) : super(slots: slots);

  factory AvailableDayModel.fromJson(Map<String, dynamic> json) {
    return AvailableDayModel(
      day: json['day'] ?? '',
      slots: (json['slots'] as List<dynamic>).map((dynamic item) => item as String).toList(),
    );
  }
}

class DoctorTimingModel extends DoctorTiming {
  DoctorTimingModel({
    required super.day,
    required super.time,
  });

  factory DoctorTimingModel.fromJson(Map<String, dynamic> json) {
    return DoctorTimingModel(
      day: json['day'] ?? '',
      time: json['time'] ?? '',
    );
  }
}

class DoctorLocationModel extends DoctorLocation {
  DoctorLocationModel({
    required super.area,
    required super.hospital,
    required super.fullAddress,
  });

  factory DoctorLocationModel.fromJson(Map<String, dynamic> json) {
    return DoctorLocationModel(
      area: json['area'] ?? '',
      hospital: json['hospital'] ?? '',
      fullAddress: json['full_address'] ?? '',
    );
  }
}

