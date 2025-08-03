import 'package:flutter/material.dart';
import 'package:mission/components/ads_footer.dart';
import 'package:go_router/go_router.dart';

class PayoutSuccessPage extends StatelessWidget {
  const PayoutSuccessPage({super.key});

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
          "Payout Success",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            // Success icon
            Container(
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black87,
              ),
              child: const Center(
                child: Icon(Icons.check, color: Colors.white, size: 35),
              ),
            ),

            const SizedBox(height: 24),

            // Success message
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    '"Success! Your money is on the way."',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "It’s now being processed and may take 3 to 5 working days (excluding holidays). To see the progress, just head to your Payout History. We’ll notify you once the money’s on its way!",
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
      // Footer tanpa padding, full-width
      bottomNavigationBar: const AdsFooter(),
    );
  }
}
