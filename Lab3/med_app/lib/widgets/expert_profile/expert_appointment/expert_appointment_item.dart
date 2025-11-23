import 'package:med_app/list_items/list_items.dart';

class AppointmentClinic {
  final String name;
  final String location;
  const AppointmentClinic({required this.name, required this.location});
}

class AppointmentDaySlots {
  final String day;
  final List<String> slots;
  const AppointmentDaySlots({required this.day, required this.slots});
}

class ExpertAppointmentItem extends ListItem {
  final String type;
  final String feeText;
  final AppointmentClinic clinic;
  final List<AppointmentClinic> moreClinics;
  final String waitTime;
  final List<AppointmentDaySlots> availableDays;

  ExpertAppointmentItem({
    required this.type,
    required this.feeText,
    required this.clinic,
    required this.moreClinics,
    required this.waitTime,
    required this.availableDays,
  });

  factory ExpertAppointmentItem.fromJson(Map<String, dynamic> json) {
    final ap = json['appointment'] as Map<String, dynamic>;
    final hospital = ap['hospital'] as Map<String, dynamic>;
    final List more = (hospital['more_clinics'] as List? ?? []);
    final List days = (ap['available_days'] as List? ?? []);
    final currency = ap['currency']?.toString() ?? '';
    final fee = (ap['fee'] is num) ? (ap['fee'] as num).toInt().toString() : (ap['fee']?.toString() ?? '');

    return ExpertAppointmentItem(
      type: ap['type']?.toString() ?? '',
      feeText: '$currency$fee',
      clinic: AppointmentClinic(
        name: hospital['name']?.toString() ?? '',
        location: hospital['location']?.toString() ?? '',
      ),
      moreClinics: more
          .map((e) => AppointmentClinic(
                name: e['name']?.toString() ?? '',
                location: e['location']?.toString() ?? '',
              ))
          .toList()
          .cast<AppointmentClinic>(),
      waitTime: hospital['wait_time']?.toString() ?? ap['wait_time']?.toString() ?? '',
      availableDays: days
          .map((e) => AppointmentDaySlots(
                day: e['day']?.toString() ?? '',
                slots: ((e['slots'] as List?) ?? []).map((s) => s.toString()).toList(),
              ))
          .toList()
          .cast<AppointmentDaySlots>(),
    );
  }
}






