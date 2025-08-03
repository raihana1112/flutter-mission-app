import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mission/components/ads_footer.dart';
import 'package:mission/components/button.dart';
import 'package:mission/components/input_field.dart';
import 'package:flutter/services.dart'; 

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  

  final TextEditingController emailController =
      TextEditingController(text: "admin@gmail.com");
  final TextEditingController passwordController =
      TextEditingController(text: "*****************");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => context.pop(),
                  ),
                  const Expanded(
                    child: Center(
                      child: AutoSizeText(
                        'Settings',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const AutoSizeText(
                      'Done',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              /// Profile Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),

                    /// Email Input
                    CustomInputField(
                      label: "Email",
                      controller: emailController,
                      hintText: "admin@gmail.com",
                      width: 370,
                      fillColor: Colors.grey[200]
                    ),

                    const SizedBox(height: 8),

                    /// Password Input
                    CustomInputField(
                      label: "Password",
                      controller: passwordController,
                      isPassword: true,
                      hintText: "********************",
                      width: 370,
                      fillColor: Colors.grey[200]
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              /// Current Cash Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Current Cash",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        TextButton(
                          onPressed: () {
                            context.push('/payout-history');
                          },
                          child: const Text(
                            "History",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        
                      ],
                    ),

                    const SizedBox(height: 10),

                    /// Cash Display
                    const Center(
                      child: AutoSizeText(
                        "Rp. 120.000",
                        style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                      ),
                    ),

                    const SizedBox(height: 4),

                    /// Payouts
                    Center(
                      child: TextButton(
                        onPressed: () {
                          context.push('/payouts');
                        },
                        child: const Text(
                          "Payouts",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 16),

              /// Logout Button
              CustomButton(
                text: "Logout",
                onPressed: () {
                  context.go('/');
                },
                width: 430,
              ),
              const SizedBox(height: 16),

              /// Referral Code
              Align(
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Referral Code",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "XHGTMY",
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(const ClipboardData(text: "XHGTMY"));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Referral code copied")),
                            );
                          },
                          child: const Icon(Icons.copy, size: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40), // Bottom spacing to avoid overlap with footer
            ],
          ),
        ),
      ),
      // Footer tanpa padding, full-width
      bottomNavigationBar: const AdsFooter(),
    );
  }
}
