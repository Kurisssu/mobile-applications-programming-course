import 'package:flutter/material.dart';

class ExpertsBar extends StatelessWidget {
  const ExpertsBar({super.key});

  @override
  Widget build(BuildContext context) {
    final specialists = const [
      {
        "image": "assets/images/experts/dr_ahmed_khan.png",
        "title": "General Practicioners",
        "name": "Dr. Ahmed Khan",
        "price": "৳300"
      },
      {
        "image": "assets/images/experts/dr_warner_miller.png",
        "title": "General Practicioners",
        "name": "Dr. Warner Miller",
        "price": "৳300"
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Specialists',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(44, 28),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Row(
                  children: [
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF4C9F9F),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Color(0xFF4C9F9F),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 314,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: specialists.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final sp = specialists[index];
                return SpecialistCard(
                  imagePath: sp['image']!,
                  category: sp['title']!,
                  doctorName: sp['name']!,
                  price: sp['price']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SpecialistCard extends StatelessWidget {
  final String imagePath;
  final String category;
  final String doctorName;
  final String price;

  const SpecialistCard({
    super.key,
    required this.imagePath,
    required this.category,
    required this.doctorName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 200,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(14)),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category,
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        doctorName,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Divider(height: 1),
                      const SizedBox(height: 8),
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 6, offset: const Offset(0,2)),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 18,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}