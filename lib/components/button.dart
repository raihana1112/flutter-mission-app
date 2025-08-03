import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final bool isBold;
  final double? fontsize;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = 180,
    this.height = 45,
    this.backgroundColor = Colors.black,
    this.textColor = Colors.white,
    this.isBold = true,
    this.fontsize
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Center(
          child: AutoSizeText(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: fontsize??  16,
            ),
            maxLines: 1,
            minFontSize: 10,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
),

      ),
    );
  }
}
