import 'package:flutter/material.dart';

class Timing {
  final String day;
  final String time;

  Timing({required this.day, required this.time});
}

class ExpertTiming extends StatefulWidget {
  const ExpertTiming({super.key});

  @override
  State<ExpertTiming> createState() => _ExpertTimingState();
}

class _ExpertTimingState extends State<ExpertTiming> {
  final List<Timing> timings = [
    Timing(day: "Monday", time: "09:00 AM - 05:00 PM"),
    Timing(day: "Monday", time: "09:00 AM - 05:00 PM"),
    Timing(day: "Tuesday", time: "Closed"),
    Timing(day: "Tuesday", time: "Closed"),
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 21, left: 16),
          child: Text(
            'Timing',
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
            itemCount: timings.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              final item = timings[index];
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
                        item.day,
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
                        item.time,
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
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