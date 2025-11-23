import 'package:med_app/domain/entities/feed.dart';

class FeedModel extends Feed {
  FeedModel({
    required FeedUserModel user,
    required List<FeedActionModel> actions,
    required List<SpecialityModel> specialities,
    required List<SpecialistModel> specialists,
  }) : super(
          user: user,
          actions: actions,
          specialities: specialities,
          specialists: specialists,
        );

  factory FeedModel.fromJson(Map<String, dynamic> json) {
    return FeedModel(
      user: FeedUserModel.fromJson(json['user'] as Map<String, dynamic>),
      actions: (json['actions'] as List<dynamic>)
          .map((dynamic item) => FeedActionModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      specialities: (json['specialities'] as List<dynamic>)
          .map((dynamic item) => SpecialityModel.fromJson(item as Map<String, dynamic>))
          .toList(),
      specialists: (json['specialists'] as List<dynamic>)
          .map((dynamic item) => SpecialistModel.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
}

class FeedUserModel extends FeedUser {
  FeedUserModel({
    required super.name,
    required super.location,
    required super.profileImageUrl,
  });

  factory FeedUserModel.fromJson(Map<String, dynamic> json) {
    return FeedUserModel(
      name: json['name'] ?? '',
      location: json['location'] ?? '',
      profileImageUrl: json['profile_image'] ?? '',
    );
  }
}

class FeedActionModel extends FeedAction {
  FeedActionModel({
    required super.title,
    required super.imageUrl,
  });

  factory FeedActionModel.fromJson(Map<String, dynamic> json) {
    return FeedActionModel(
      title: json['title'] ?? '',
      imageUrl: json['image'] ?? '',
    );
  }
}

class SpecialityModel extends Speciality {
  SpecialityModel({
    required super.id,
    required super.name,
    required super.iconUrl,
  });

  factory SpecialityModel.fromJson(Map<String, dynamic> json) {
    return SpecialityModel(
      id: json['id'] as int,
      name: json['name'] ?? '',
      iconUrl: json['icon'] ?? '',
    );
  }
}

class SpecialistModel extends Specialist {
  SpecialistModel({
    required super.id,
    required super.name,
    required super.speciality,
    required super.rating,
    required super.available,
    required super.imageUrl,
  });

  factory SpecialistModel.fromJson(Map<String, dynamic> json) {
    return SpecialistModel(
      id: json['id'] as int,
      name: json['name'] ?? '',
      speciality: json['speciality'] ?? '',
      rating: (json['rating'] as num).toDouble(),
      available: json['available'] as bool? ?? false,
      imageUrl: json['image'] ?? '',
    );
  }
}

