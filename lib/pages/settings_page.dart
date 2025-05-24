import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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

              // Profile card
              InkWell(
                onTap: () => context.go('/profile'),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const AutoSizeText(
                    'Profile',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),

              // Payouts card
              InkWell(
                onTap: () => context.go('/payouts'),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 24),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const AutoSizeText(
                    'Payouts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),

              // Referral Code
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  AutoSizeText(
                    'Referral Code',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                  ),
                  AutoSizeText(
                    'XHGTMY',
                    style: TextStyle(fontSize: 14),
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
