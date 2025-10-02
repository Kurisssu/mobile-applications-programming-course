import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MedicinesBar extends StatelessWidget {
  const MedicinesBar({super.key});

  @override
  Widget build(BuildContext context) {
    final medicines = const [
      {
        "image": "assets/images/medicines/amoxicillin.png",
        "title": "200mg•10 Capsule",
        "name": "Amoxicillin",
        "price": "৳10",
      },
      {
        "image": "assets/images/medicines/acetylcystein.png",
        "title": "200mg•10 Capsule",
        "name": "Acetylcystein",
        "price": "৳10",
      },
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Medicines',
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
            height: 242,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: medicines.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final ms = medicines[index];
                return MedicineCard(
                  imagePath: ms['image']!,
                  title: ms['title']!,
                  subtitle: ms['name']!,
                  price: ms['price']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MedicineCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;

  const MedicineCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  child: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(width: 3),
                    Text(
                      '/ Strip',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 8,
            top: 8,
            child: Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  size: 14,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Positioned(
            right: 8,
            bottom: 5,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: SvgPicture.asset(
                'assets/icons/add.svg',
                width: 30,
                height: 30,
              ),
              onPressed: () {},
              tooltip: 'Add',
            ),
          ),
        ],
      ),
    );
  }
}
