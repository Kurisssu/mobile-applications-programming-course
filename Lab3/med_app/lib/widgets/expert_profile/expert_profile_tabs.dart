import 'package:flutter/material.dart';
import 'tabs/expert_info_tab_content.dart';

class ExpertProfileTabs extends StatefulWidget {
  const ExpertProfileTabs({super.key});

  @override
  State<ExpertProfileTabs> createState() => _ExpertProfileTabsState();
}

class _ExpertProfileTabsState extends State<ExpertProfileTabs> {
  int _selectedIndex = 0;
  final List<String> _tabs = ["Info", "History", "Review"];

  @override
  Widget build(BuildContext context) {
    final double tabWidth =
        (MediaQuery.of(context).size.width - 31) / _tabs.length;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: 44,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              AnimatedAlign(
                alignment: _getAlignment(),
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeInOut,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: tabWidth - 8,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: List.generate(_tabs.length * 2 - 1, (index) {
                  if (index.isOdd) {
                    return Container(
                      height: 20,
                      width: 1,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      color: Colors.grey.shade400,
                    );
                  } else {
                    final tabIndex = index ~/ 2;
                    return Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => _selectedIndex = tabIndex),
                        child: Center(
                          child: Text(
                            _tabs[tabIndex],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: _selectedIndex == tabIndex
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: _selectedIndex == tabIndex
                                  ? Colors.black
                                  : Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                }),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: _buildTabContent(),
        ),
      ],
    );
  }

  Alignment _getAlignment() {
    switch (_selectedIndex) {
      case 0:
        return Alignment.centerLeft;
      case 1:
        return Alignment.center;
      case 2:
        return Alignment.centerRight;
      default:
        return Alignment.centerLeft;
    }
  }

  Widget _buildTabContent() {
    switch (_selectedIndex) {
      case 0:
        return const ExpertInfoTabContent(key: ValueKey(0));
      case 1:
        return const Center(
          key: ValueKey(1),
          child: Text("History content here"),
        );
      case 2:
        return const Center(
          key: ValueKey(2),
          child: Text("Review content here"),
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
