import 'package:med_app/list_items/list_items.dart';
import 'compartments_data.dart';
import 'package:flutter/widgets.dart';

class CompartmentListItem extends ListItem {
  final List<CompartmentItem> topItems;
  final List<CompartmentItem> bottomItems;

  CompartmentListItem({
    required this.topItems,
    required this.bottomItems,
  });

  factory CompartmentListItem.fromJson(List<dynamic> actions) {
    final List<CompartmentItem> top = [];
    final List<CompartmentItem> bottom = [];

    for (int i = 0; i < actions.length; i++) {
      final Map<String, dynamic> a = actions[i];
      final String title = a['title'] ?? '';
      final String imageUrl = a['image'] ?? '';

      if (i < 2) {
        top.add(CompartmentItem(
          title: title,
          image: NetworkImage(imageUrl),
          width: cardWidth,
          height: cardHeight,
        ));
      } else if (i < 5) {
        bottom.add(CompartmentItem(
          title: title,
          image: NetworkImage(imageUrl),
          width: miniCardWidth,
          height: miniCardHeight,
        ));
      }
    }

    return CompartmentListItem(topItems: top, bottomItems: bottom);
  }
}