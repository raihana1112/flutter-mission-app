import 'package:flutter/material.dart';

class MissionItem extends StatelessWidget {
  final String task;
  final String action;

  const MissionItem({
    super.key,
    required this.task,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("• $task"),
          if (action.isNotEmpty)
            Text(
              action,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              
              ),
            ),
        ],
      ),
    );
  }
}
