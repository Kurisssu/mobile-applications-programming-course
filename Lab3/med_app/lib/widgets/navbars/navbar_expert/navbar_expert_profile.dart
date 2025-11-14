import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../screens/home/home_screen.dart';

PreferredSize navBarExpertProfile({
  required BuildContext context,
  required String title,
  String name = 'Cardiologist',
}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(48),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(0, 2),
            blurRadius: 6,
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                  color: Colors.black87,
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/star.svg',
                  width: 22,
                  height: 22,
                ),
                tooltip: 'Notifications',
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/connections.svg',
                  width: 22,
                  height: 22,
                ),
                tooltip: 'Share',
              ),
            ],
          ),
        ),
      ),
    ),
  );
}