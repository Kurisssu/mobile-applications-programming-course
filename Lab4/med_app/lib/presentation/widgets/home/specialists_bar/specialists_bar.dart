import 'package:flutter/material.dart';
import 'specialist_card.dart';
import 'specialists_list_item.dart';

class SpecialistsBar extends StatelessWidget {
  const SpecialistsBar({super.key, required this.item});

  final SpecialistsListItem item;

  @override
  Widget build(BuildContext context) {
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
              itemCount: item.specialists.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final sp = item.specialists[index];
                return SpecialistCard(
                  image: sp.image,
                  category: sp.title,
                  doctorName: sp.name,
                  rating: sp.rating,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}