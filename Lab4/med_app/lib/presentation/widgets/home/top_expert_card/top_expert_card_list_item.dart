import 'package:med_app/presentation/list_items/list_items.dart';

class TopExpertCardItem extends ListItem {
  final String imagePath;
  final String name;
  final String specialty;
  final String badgeIconPath;

  TopExpertCardItem({
    required this.imagePath,
    required this.name,
    required this.specialty,
    required this.badgeIconPath,
  });

  factory TopExpertCardItem.defaults() {
    return TopExpertCardItem(
      imagePath: 'assets/images/top_expert.png',
      name: 'Dr. Emma Kathrin',
      specialty: 'Cardiologist',
      badgeIconPath: 'assets/icons/top_expert.svg',
    );
  }
}






