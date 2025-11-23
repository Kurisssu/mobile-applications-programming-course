import 'package:med_app/list_items/list_items.dart';

class ExpertTimingData {
  final String day;
  final String time;
  const ExpertTimingData({required this.day, required this.time});
}

class ExpertTimingListItem extends ListItem {
  final List<ExpertTimingData> timings;
  ExpertTimingListItem({required this.timings});

  factory ExpertTimingListItem.fromJson(Map<String, dynamic> json) {
    final List list = (json['timing'] as List? ?? []);
    return ExpertTimingListItem(
      timings: list
          .map((e) => ExpertTimingData(day: e['day']?.toString() ?? '', time: e['time']?.toString() ?? ''))
          .toList()
          .cast<ExpertTimingData>(),
    );
  }
}






