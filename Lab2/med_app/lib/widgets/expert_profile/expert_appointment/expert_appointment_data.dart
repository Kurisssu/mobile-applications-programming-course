class AppointmentDay {
  final String label;
  final int slots;

  AppointmentDay({required this.label, required this.slots});
}

class ExpertAppointmentInfo {
  final String title;
  final String price;
  final String clinicName;
  final String location;
  final String moreClinicsText;
  final String waitTime;

  ExpertAppointmentInfo({
    required this.title,
    required this.price,
    required this.clinicName,
    required this.location,
    required this.moreClinicsText,
    required this.waitTime,
  });
}

final List<AppointmentDay> appointmentDays = [
  AppointmentDay(label: "Today", slots: 0),
  AppointmentDay(label: "Tomorrow", slots: 20),
  AppointmentDay(label: "17 Oct", slots: 12),
];

final List<String> appointmentTimeSlots = [
  "06:00 - 06:30",
  "06:30 - 07:00",
  "07:00 - 07:30",
];

final ExpertAppointmentInfo appointmentInfo = ExpertAppointmentInfo(
  title: "In-Clinic Appointment",
  price: "৳1,000",
  clinicName: "Evercare Hospital Ltd.",
  location: "Bashundhara, Dhaka",
  moreClinicsText: "2 More clinic",
  waitTime: "20 mins or less wait time",
);