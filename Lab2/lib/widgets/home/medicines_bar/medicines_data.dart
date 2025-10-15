class Medicine {
  final String image;
  final String title;
  final String name;
  final String price;

  const Medicine({
    required this.image,
    required this.title,
    required this.name,
    required this.price,
  });
}

const List<Medicine> medicines = [
  Medicine(
    image: 'assets/images/medicines/amoxicillin.png',
    title: '200mg•10 Capsule',
    name: 'Amoxicillin',
    price: '৳10',
  ),
  Medicine(
    image: 'assets/images/medicines/acetylcystein.png',
    title: '200mg•10 Capsule',
    name: 'Acetylcystein',
    price: '৳10',
  ),
];