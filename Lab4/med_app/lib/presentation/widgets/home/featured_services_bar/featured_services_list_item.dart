import 'package:med_app/presentation/list_items/list_items.dart';

class FeaturedServiceData {
  final String image;

  const FeaturedServiceData({required this.image});
}

class FeaturedServicesListItem extends ListItem {
  final List<FeaturedServiceData> items;

  FeaturedServicesListItem({required this.items});

  factory FeaturedServicesListItem.defaults() {
    return FeaturedServicesListItem(items: const [
      FeaturedServiceData(image: 'assets/images/services/services_1.png'),
      FeaturedServiceData(image: 'assets/images/services/services_2.png'),
      FeaturedServiceData(image: 'assets/images/services/services_3.png'),
    ]);
  }
}






