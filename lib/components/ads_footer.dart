import 'package:flutter/material.dart';

class AdsFooter extends StatelessWidget {
  const AdsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(child: Text("Your Privacy, Our Priority")),
                ),
        const SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: const Text(
            "ADS",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
      ],
    );
  }
}
