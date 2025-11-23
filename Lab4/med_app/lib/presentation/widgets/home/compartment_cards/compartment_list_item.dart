import 'package:flutter/widgets.dart';
import 'package:med_app/domain/entities/feed.dart';
import 'package:med_app/presentation/list_items/list_items.dart';
import 'compartments_data.dart';

class CompartmentListItem extends ListItem {
  final List<CompartmentItem> topItems;
  final List<CompartmentItem> bottomItems;

  CompartmentListItem({
    required this.topItems,
    required this.bottomItems,
  });

  factory CompartmentListItem.fromActions(List<FeedAction> actions) {
    final List<CompartmentItem> top = [];
    final List<CompartmentItem> bottom = [];

    for (int i = 0; i < actions.length; i++) {
      final FeedAction action = actions[i];
      final String title = action.title;
      final String imageUrl = action.imageUrl;

      if (i < 2) {
        top.add(
          CompartmentItem(
            title: title,
            image: NetworkImage(imageUrl),
            width: cardWidth,
            height: cardHeight,
          ),
        );
      } else if (i < 5) {
        bottom.add(
          CompartmentItem(
            title: title,
            image: NetworkImage(imageUrl),
            width: miniCardWidth,
            height: miniCardHeight,
          ),
        );
      }
    }

    return CompartmentListItem(topItems: top, bottomItems: bottom);
  }
}