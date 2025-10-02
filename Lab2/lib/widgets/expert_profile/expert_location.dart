import 'package:flutter/material.dart';

class Location {
  final String City;
  final String address;

  Location({required this.City, required this.address});
}

class ExpertLocation extends StatefulWidget {
  const ExpertLocation({super.key});

  @override
  State<ExpertLocation> createState() => _ExpertLocationState();
}

class _ExpertLocationState extends State<ExpertLocation> {
  final List<Location> locations = [
    Location(City: "Shahbag", address: "BSSMU - Bangaband.."),
    Location(City: "Boshundhora", address: "Evercare Hospital Ltd"),
    Location(City: "Boshundhora", address: "Evercare Hospital Ltd"),
    Location(City: "Tuesday", address: "Closed"),
    Location(City: "Tuesday", address: "Closed"),
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 12, left: 16),
          child: Text(
            'Location',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black87,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2),
          height: 88,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: locations.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              final item = locations[index];
              final isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  width: 150,
                  margin: const EdgeInsets.only(bottom: 8, top: 8),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.grey[200] : Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.City,
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        item.address,
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}