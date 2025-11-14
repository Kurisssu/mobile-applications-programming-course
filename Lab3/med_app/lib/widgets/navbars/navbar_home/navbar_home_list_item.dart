import 'package:flutter/cupertino.dart';
import 'package:med_app/list_items/list_items.dart';

class HomeNavBarListItem extends ListItem {
  final String name;
  final String location;
  final Widget profileImage;

  HomeNavBarListItem({
    required this.name,
    required this.location,
    required this.profileImage
  });

  factory HomeNavBarListItem.fromJson(Map<String, dynamic> json) {
    return HomeNavBarListItem(
        name: json['name'], location: json['location'], profileImage: Image.network(json['profile_image']));
  }
}