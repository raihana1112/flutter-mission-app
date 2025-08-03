import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../components/ads_footer.dart';
import '../components/ads_blok.dart';
import '../components/button.dart';

class MissionsPage extends StatelessWidget {
  const MissionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          "Missions",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: AutoSizeText(
                  "Watch Videos",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const Center(
                child: AutoSizeText("Get 1250c", style: TextStyle(fontSize: 14)),
              ),
              const SizedBox(height: 20),

              // Video Placeholder
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Icon(Icons.play_arrow, size: 48, color: Colors.black),
                ),
              ),
              const SizedBox(height: 16),

              // Finish Button
              Center(
                child: CustomButton(
                  text: "Finish",
                  onPressed: () {
                    context.push('/rewards-ads'); // arahkan ke route RewardsAdsPage
                  },
                ),
              ),

              const SizedBox(height: 4),
              const Center(
                child: AutoSizeText(
                  "Claim coin after video finish",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(height: 40),

              // Ads Blok
              const AdsBlok(),
            ],
          ),
        ),
      ),

      // Footer tanpa padding, full-width
      bottomNavigationBar: const AdsFooter(),
    );
  }
}
