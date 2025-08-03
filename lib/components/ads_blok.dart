import 'package:flutter/material.dart';

class AdsBlok extends StatelessWidget {
  const AdsBlok({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  color: Colors.grey[300],
                  alignment: Alignment.center,
                  child: const Text(
                    "ADS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                  ),
                ),

              ],
            ),
          ),
      ],
    );
  }
}
