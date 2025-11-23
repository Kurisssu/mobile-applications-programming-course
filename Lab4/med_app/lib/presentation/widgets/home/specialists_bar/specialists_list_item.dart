import 'package:flutter/widgets.dart';
import 'package:med_app/domain/entities/feed.dart';
import 'package:med_app/presentation/list_items/list_items.dart';

class SpecialistData {
  final ImageProvider image;
  final String title;
  final String name;
  final double rating;

  const SpecialistData({
    required this.image,
    required this.title,
    required this.name,
    required this.rating,
  });
}

class SpecialistsListItem extends ListItem {
  final List<SpecialistData> specialists;

  SpecialistsListItem({required this.specialists});

  factory SpecialistsListItem.fromSpecialists(List<Specialist> specialists) {
    final List<SpecialistData> list = [];
    for (final Specialist specialist in specialists) {
      list.add(
        SpecialistData(
          image: NetworkImage(specialist.imageUrl),
          title: specialist.speciality,
          name: specialist.name,
          rating: specialist.rating,
        ),
      );
    }
    return SpecialistsListItem(specialists: list);
  }
}


