import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mission/components/ads_footer.dart';

class PayoutHistoryPage extends StatelessWidget {
  const PayoutHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> payoutHistory = [
      {
        'method': 'OVO',
        'amount': 'Rp. 120.000',
        'date': '08/10/2025 12.00.00',
        'status': 'Penarikan Berhasil'
      },
      {
        'method': 'DANA',
        'amount': 'Rp. 120.000',
        'date': '08/10/2025 12.00.00',
        'status': 'Penarikan Berhasil'
      },
      {
        'method': 'GOPAY',
        'amount': 'Rp. 120.000',
        'date': '08/10/2025 12.00.00',
        'status': 'Penarikan Berhasil'
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          "History",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: payoutHistory.length,
              itemBuilder: (context, index) {
                final item = payoutHistory[index];
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Top row: Method & Amount
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tarik ke ${item['method']}',
                              style: const TextStyle(fontSize: 16)),
                          Text(item['amount']!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ],
                      ),

                      const SizedBox(height: 6),

                      /// Date and status
                      Text(
                        '${item['date']} ${item['status']}',
                        style: const TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                );
              },
            ),
          ),

        ],
      ),
      // Footer tanpa padding, full-width
      bottomNavigationBar: const AdsFooter(),
    );
  }
}
