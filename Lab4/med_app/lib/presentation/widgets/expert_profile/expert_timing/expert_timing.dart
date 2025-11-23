import 'package:flutter/material.dart';
import 'expert_timing_list_item.dart';
import 'expert_timing_data.dart';
import 'expert_timing_card.dart';

class ExpertTiming extends StatefulWidget {
  const ExpertTiming({super.key, required this.item});

  final ExpertTimingListItem item;

  @override
  State<ExpertTiming> createState() => _ExpertTimingState();
}

class _ExpertTimingState extends State<ExpertTiming> {
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
        SizedBox(
          height: 88,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemCount: widget.item.timings.length,
            separatorBuilder: (context, index) => const SizedBox(width: 10),
            itemBuilder: (context, index) {
              final item = widget.item.timings[index];
              final isSelected = selectedIndex == index;

              return ExpertTimingCard(
                timing: Timing(day: item.day, time: item.time),
                isSelected: isSelected,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}