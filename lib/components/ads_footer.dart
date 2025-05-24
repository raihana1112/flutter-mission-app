import 'package:flutter/material.dart';

class AdsFooter extends StatelessWidget {
  final bool showBigAd;

  const AdsFooter({super.key, this.showBigAd = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showBigAd) 
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: Text(
                      "Your Privacy, Our Priority",
                    ),
                  ),
                ),
              ],
            ),
          ),

        // Footer abu-abu full width
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          color: Colors.grey[300],
          alignment: Alignment.center,
          child: const Text(
            "ADS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ],
    );
  }
}
