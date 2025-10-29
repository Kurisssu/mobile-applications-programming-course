class TopExpert {
  final String imagePath;
  final String name;
  final String specialty;
  final String badgeIconPath;

  const TopExpert({
    required this.imagePath,
    required this.name,
    required this.specialty,
    required this.badgeIconPath,
  });
}

const TopExpert topExpert = TopExpert(
  imagePath: 'assets/images/top_expert.png',
  name: 'Dr. Emma Kathrin',
  specialty: 'Cardiologist',
  badgeIconPath: 'assets/icons/top_expert.svg',
);