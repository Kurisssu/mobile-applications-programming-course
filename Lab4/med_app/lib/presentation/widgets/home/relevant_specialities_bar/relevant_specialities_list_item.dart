import 'package:flutter/widgets.dart';
import 'package:med_app/domain/entities/feed.dart';
import 'package:med_app/presentation/list_items/list_items.dart';

class RelevantSpecialityData {
  final String label;
  final ImageProvider icon;

  const RelevantSpecialityData({required this.label, required this.icon});
}

class RelevantSpecialitiesListItem extends ListItem {
  final List<RelevantSpecialityData> items;

  RelevantSpecialitiesListItem({required this.items});

  factory RelevantSpecialitiesListItem.fromSpecialities(List<Speciality> specialities) {
    final List<RelevantSpecialityData> list = [];
    for (final Speciality speciality in specialities) {
      list.add(
        RelevantSpecialityData(
          label: speciality.name,
          icon: NetworkImage(speciality.iconUrl),
        ),
      );
    }
    return RelevantSpecialitiesListItem(items: list);
  }
}


