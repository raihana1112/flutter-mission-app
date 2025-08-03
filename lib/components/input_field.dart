import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final bool isPassword;
  final String hintText;
  final Color? fillColor;
  final double? width; 

  const CustomInputField({
    super.key,
    required this.label,
    
    this.isPassword = false,
    required this.hintText,
    this.controller,
    this.fillColor,
    this.width
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
            style: const TextStyle(fontSize: 14),
          ),
        ),
        SizedBox(
          width: width ?? 330,
          child: Container(
            decoration: BoxDecoration(
              color: fillColor ?? Colors.grey[800],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: effectiveController,
              obscureText: isPassword,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
                contentPadding: const EdgeInsets.symmetric(vertical: 14),
              ),
              style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
