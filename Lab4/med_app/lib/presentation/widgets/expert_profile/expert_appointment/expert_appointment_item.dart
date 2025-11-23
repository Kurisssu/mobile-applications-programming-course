import 'package:med_app/domain/entities/doctor_details.dart';
import 'package:med_app/presentation/list_items/list_items.dart';

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

  factory ExpertAppointmentItem.fromAppointment(Appointment appointment) {
    final hospital = appointment.hospital;
    return ExpertAppointmentItem(
      type: appointment.type,
      feeText: '${appointment.currency}${appointment.fee}',
      clinic: AppointmentClinic(
        name: hospital.name,
        location: hospital.location,
      ),
      moreClinics: hospital.moreClinics
          .map(
            (clinic) => AppointmentClinic(
              name: clinic.name,
              location: clinic.location,
            ),
          )
          .toList(),
      waitTime: hospital.waitTime,
      availableDays: appointment.availableDays
          .map(
            (day) => AppointmentDaySlots(
              day: day.day,
              slots: day.slots,
            ),
          )
          .toList(),
    );
  }
}






