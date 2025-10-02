import 'package:flutter/material.dart';

class FeaturedServices extends StatelessWidget {
  const FeaturedServices({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/services/services_1.png',
      'assets/images/services/services_2.png',
      'assets/images/services/services_3.png',
    ];

    const double itemWidth = 180;
    const double itemHeight = 200;
    const double itemSpacing = 17;

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Featured Services',
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
            height: itemHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              separatorBuilder: (context, index) => const SizedBox(width: itemSpacing),
              itemBuilder: (context, index) {
                final img = images[index];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: itemWidth,
                    height: itemHeight,
                    color: Colors.grey.shade200,
                    child: Image.asset(
                      img,
                      width: itemWidth,
                      height: itemHeight,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}