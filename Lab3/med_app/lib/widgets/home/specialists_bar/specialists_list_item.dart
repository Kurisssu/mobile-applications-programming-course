import 'package:med_app/list_items/list_items.dart';
import 'package:flutter/widgets.dart';

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

  factory SpecialistsListItem.fromJson(List<dynamic> jsonList) {
    final List<SpecialistData> list = [];
    for (final dynamic entry in jsonList) {
      final Map<String, dynamic> e = entry as Map<String, dynamic>;
      list.add(
        SpecialistData(
          image: NetworkImage(e['image'] ?? ''),
          title: e['speciality'] ?? '',
          name: e['name'] ?? '',
          rating: (e['rating'] is num) ? (e['rating'] as num).toDouble() : double.tryParse((e['rating'] ?? '').toString()) ?? 0.0,
        ),
      );
    }
    return SpecialistsListItem(specialists: list);
  }
}


