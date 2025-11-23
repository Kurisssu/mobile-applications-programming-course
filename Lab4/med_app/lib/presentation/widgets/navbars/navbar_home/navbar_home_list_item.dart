import 'package:flutter/cupertino.dart';
import 'package:med_app/domain/entities/feed.dart';
import 'package:med_app/presentation/list_items/list_items.dart';

class HomeNavBarListItem extends ListItem {
  final String name;
  final String location;
  final Widget profileImage;

  HomeNavBarListItem({
    required this.name,
    required this.location,
    required this.profileImage
  });

  factory HomeNavBarListItem.fromFeedUser(FeedUser user) {
    return HomeNavBarListItem(
      name: user.name,
      location: user.location,
      profileImage: Image.network(user.profileImageUrl),
    );
  }
}