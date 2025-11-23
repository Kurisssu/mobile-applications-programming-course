class DoctorDetails {
  const DoctorDetails({
    required this.doctor,
    required this.appointment,
    required this.timing,
    required this.locations,
    required this.tabs,
  });

  final Doctor doctor;
  final Appointment appointment;
  final List<DoctorTiming> timing;
  final List<DoctorLocation> locations;
  final List<String> tabs;
}

class Doctor {
  const Doctor({
    required this.id,
    required this.name,
    required this.speciality,
    required this.qualification,
    required this.profileImageUrl,
    required this.rating,
    required this.reviewsCount,
    required this.yearsOfExperience,
    required this.patientsTreated,
    required this.isFavorite,
  });

  final int id;
  final String name;
  final String speciality;
  final String qualification;
  final String profileImageUrl;
  final double rating;
  final int reviewsCount;
  final int yearsOfExperience;
  final int patientsTreated;
  final bool isFavorite;
}

class Appointment {
  const Appointment({
    required this.type,
    required this.fee,
    required this.currency,
    required this.hospital,
    required this.availableDays,
  });

  final String type;
  final int fee;
  final String currency;
  final Hospital hospital;
  final List<AvailableDay> availableDays;
}

class Hospital {
  const Hospital({
    required this.name,
    required this.location,
    required this.waitTime,
    required this.moreClinics,
  });

  final String name;
  final String location;
  final String waitTime;
  final List<Clinic> moreClinics;
}

class Clinic {
  const Clinic({
    required this.name,
    required this.location,
  });

  final String name;
  final String location;
}

class AvailableDay {
  const AvailableDay({
    required this.day,
    required this.slots,
  });

  final String day;
  final List<String> slots;
}

class DoctorTiming {
  const DoctorTiming({
    required this.day,
    required this.time,
  });

  final String day;
  final String time;
}

class DoctorLocation {
  const DoctorLocation({
    required this.area,
    required this.hospital,
    required this.fullAddress,
  });

  final String area;
  final String hospital;
  final String fullAddress;
}

