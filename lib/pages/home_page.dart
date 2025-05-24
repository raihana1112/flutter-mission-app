import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';
import '../components/mission_dropdown_cards.dart';
import '../components/mission_items.dart';
import '../components/ads_footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              "Welcome",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              maxLines: 1,
                            ),
                            AutoSizeText(
                              "admin@gmail.com",
                              maxLines: 1,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            context.go('/settings');
                          },
                          child: const AutoSizeText(
                            "Setting",
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const AutoSizeText(
                          "Your Missions",
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Points
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        AutoSizeText(
                          "Points : ",
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        AutoSizeText(
                          "82122",
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const AutoSizeText(
                      "~ Rp. 120.000",
                      maxLines: 1,
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),

                    // Mission Sections
                    MissionDropdownCard(
                      title: "Daily Missions",
                      children: const [
                        MissionItem(
                          task: "Tentang Ikan - 150c",
                          action: "accept",
                        ),
                        MissionItem(
                          task: "10 Captcha - 250c",
                          action: "accept",
                        ),
                      ],
                    ),
                    MissionDropdownCard(
                      title: "Progress",
                      children: const [
                        MissionItem(
                          task: "Login 3 Hari - 300c",
                          action: "more",
                        ),
                        MissionItem(task: "Level 5 - 500c", action: "more"),
                        MissionItem(
                          task: "Watch Video - 1250c",
                          action: "more",
                        ),
                      ],
                    ),
                    MissionDropdownCard(
                      title: "Complete",
                      children: const [
                        MissionItem(task: "Login 3 Hari - 300c", action: ""),
                      ],
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),

              // Footer tanpa padding, full-width
              const AdsFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
