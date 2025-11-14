import 'package:med_app/list_items/list_items.dart';

class ExpertLocationData {
  final String area;
  final String hospital;
  final String fullAddress;
  const ExpertLocationData({required this.area, required this.hospital, required this.fullAddress});
}

class ExpertLocationListItem extends ListItem {
  final List<ExpertLocationData> locations;
  ExpertLocationListItem({required this.locations});

  factory ExpertLocationListItem.fromJson(Map<String, dynamic> json) {
    final List list = (json['locations'] as List? ?? []);
    return ExpertLocationListItem(
      locations: list
          .map((e) => ExpertLocationData(
                area: e['area']?.toString() ?? '',
                hospital: e['hospital']?.toString() ?? '',
                fullAddress: e['full_address']?.toString() ?? '',
              ))
          .toList()
          .cast<ExpertLocationData>(),
    );
  }
}





