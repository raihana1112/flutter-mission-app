import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';

class RewardsAdsPage extends StatelessWidget {
  const RewardsAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Konten Iklan di tengah
            Center(
              child: Container(
                width: screenWidth * 0.85,
                height: screenHeight * 0.85,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Stack(
                  children: [
                    // Teks "Rewards ADS" di tengah
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: AutoSizeText(
                          'Rewards\nADS',
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          minFontSize: 18,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),

                    // Tombol X di pojok kanan atas
                    Positioned(
                      top: 8,
                      right: 8,
                      child: GestureDetector(
                      onTap: () {
                        context.go('/home'); 
                      },
                      child: const Icon(
                        Icons.close,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
