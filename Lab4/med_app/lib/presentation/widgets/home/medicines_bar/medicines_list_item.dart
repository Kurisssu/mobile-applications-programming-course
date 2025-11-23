import 'package:med_app/presentation/list_items/list_items.dart';

class MedicineData {
  final String image;
  final String title;
  final String name;
  final String price;

  const MedicineData({
    required this.image,
    required this.title,
    required this.name,
    required this.price,
  });
}

class MedicinesListItem extends ListItem {
  final List<MedicineData> items;

  MedicinesListItem({required this.items});

  factory MedicinesListItem.defaults() {
    return MedicinesListItem(items: const [
      MedicineData(
        image: 'assets/images/medicines/amoxicillin.png',
        title: '200mg•10 Capsule',
        name: 'Amoxicillin',
        price: '৳10',
      ),
      MedicineData(
        image: 'assets/images/medicines/acetylcystein.png',
        title: '200mg•10 Capsule',
        name: 'Acetylcystein',
        price: '৳10',
      ),
    ]);
  }
}






