class Feed {
  const Feed({
    required this.user,
    required this.actions,
    required this.specialities,
    required this.specialists,
  });

  final FeedUser user;
  final List<FeedAction> actions;
  final List<Speciality> specialities;
  final List<Specialist> specialists;
}

class FeedUser {
  const FeedUser({
    required this.name,
    required this.location,
    required this.profileImageUrl,
  });

  final String name;
  final String location;
  final String profileImageUrl;
}

class FeedAction {
  const FeedAction({
    required this.title,
    required this.imageUrl,
  });

  final String title;
  final String imageUrl;
}

class Speciality {
  const Speciality({
    required this.id,
    required this.name,
    required this.iconUrl,
  });

  final int id;
  final String name;
  final String iconUrl;
}

class Specialist {
  const Specialist({
    required this.id,
    required this.name,
    required this.speciality,
    required this.rating,
    required this.available,
    required this.imageUrl,
  });

  final int id;
  final String name;
  final String speciality;
  final double rating;
  final bool available;
  final String imageUrl;
}

