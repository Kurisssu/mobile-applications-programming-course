class Specialist {
  final String image;
  final String title;
  final String name;
  final String price;

  const Specialist({
    required this.image,
    required this.title,
    required this.name,
    required this.price,
  });
}

const List<Specialist> specialists = [
  Specialist(
    image: 'assets/images/experts/dr_ahmed_khan.png',
    title: 'General Practicioners',
    name: 'Dr. Ahmed Khan',
    price: '৳300',
  ),
  Specialist(
    image: 'assets/images/experts/dr_warner_miller.png',
    title: 'General Practicioners',
    name: 'Dr. Warner Miller',
    price: '৳300',
  ),
];