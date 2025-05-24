import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool isPassword;
  final String hintText;

  const CustomInputField({
    super.key,
    required this.label,
    
    this.isPassword = false,
    required this.hintText,
    this.controller
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController effectiveController = controller ?? TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, bottom: 8),
          child: Text(
            label,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(
          width: 330,
          child: TextField(
            controller: effectiveController,
            obscureText: isPassword,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[800],
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
