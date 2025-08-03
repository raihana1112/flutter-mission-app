import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class MissionDropdownCard extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const MissionDropdownCard({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: AutoSizeText(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          childrenPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          tilePadding: const EdgeInsets.symmetric(horizontal: 16),
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          children: children,
        ),
      ),
    );
  }
}
