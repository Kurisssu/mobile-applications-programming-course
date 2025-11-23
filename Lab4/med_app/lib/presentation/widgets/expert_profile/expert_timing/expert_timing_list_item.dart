import 'package:med_app/domain/entities/doctor_details.dart';
import 'package:med_app/presentation/list_items/list_items.dart';

class ExpertTimingData {
  final String day;
  final String time;
  const ExpertTimingData({required this.day, required this.time});
}

class ExpertTimingListItem extends ListItem {
  final List<ExpertTimingData> timings;
  ExpertTimingListItem({required this.timings});

  factory ExpertTimingListItem.fromTimings(List<DoctorTiming> timings) {
    return ExpertTimingListItem(
      timings: timings
          .map(
            (timing) => ExpertTimingData(
              day: timing.day,
              time: timing.time,
            ),
          )
          .toList(),
    );
  }
}






