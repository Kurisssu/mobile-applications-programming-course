import 'package:med_app/list_items/list_items.dart';

class TopExpertsBySpecialityListItem extends ListItem {
  final List<Map<String, String>> row1;
  final List<Map<String, String>> row2;

  TopExpertsBySpecialityListItem({required this.row1, required this.row2});

  factory TopExpertsBySpecialityListItem.defaults() {
    return TopExpertsBySpecialityListItem(
      row1: const [
        {"icon": "assets/icons/eye.svg", "label": "Eye Specialist"},
        {"icon": "assets/icons/tooth.svg", "label": "Dentist"},
        {"icon": "assets/icons/child.svg", "label": "Child Specialist"},
        {"icon": "assets/icons/skin.svg", "label": "Skin Specialist"},
      ],
      row2: const [
        {"icon": "assets/icons/bone.svg", "label": "Physiotherapy"},
        {"icon": "assets/icons/heart.svg", "label": "Cardiologist"},
        {"icon": "assets/icons/lungs.svg", "label": "Pulmonologist"},
        {"icon": "assets/icons/vegetables.svg", "label": "Nutritionists"},
      ],
    );
  }
}

 