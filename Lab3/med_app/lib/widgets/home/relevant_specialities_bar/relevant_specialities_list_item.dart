import 'package:med_app/list_items/list_items.dart';
import 'package:flutter/widgets.dart';

class RelevantSpecialityData {
  final String label;
  final ImageProvider icon;

  const RelevantSpecialityData({required this.label, required this.icon});
}

class RelevantSpecialitiesListItem extends ListItem {
  final List<RelevantSpecialityData> items;

  RelevantSpecialitiesListItem({required this.items});

  factory RelevantSpecialitiesListItem.fromJson(List<dynamic> jsonList) {
    final List<RelevantSpecialityData> list = [];
    for (final dynamic entry in jsonList) {
      final Map<String, dynamic> e = entry as Map<String, dynamic>;
      list.add(
        RelevantSpecialityData(
          label: e['name'] ?? '',
          icon: NetworkImage(e['icon'] ?? ''),
        ),
      );
    }
    return RelevantSpecialitiesListItem(items: list);
  }
}


