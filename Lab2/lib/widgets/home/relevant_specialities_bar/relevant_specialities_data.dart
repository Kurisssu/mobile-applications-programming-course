class Speciality {
  final String icon;
  final String label;

  const Speciality({required this.icon, required this.label});
}

const List<Speciality> specialities = [
  Speciality(icon: 'assets/icons/eye.svg', label: 'Eye Specialist'),
  Speciality(icon: 'assets/icons/tooth.svg', label: 'Dentist'),
  Speciality(icon: 'assets/icons/heart.svg', label: 'Cardiologist'),
  Speciality(icon: 'assets/icons/lungs.svg', label: 'Pulmonologist'),
  Speciality(icon: 'assets/icons/bone.svg', label: 'Physiotherapy'),
];