import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16,left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade500,
                        ),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          const SizedBox(width: 12),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/qr.svg',
                  width: 22,
                  height: 22,
                ),
              tooltip: 'QR scanner',
            ),
          ),
        ],
      ),
    );
  }
}
