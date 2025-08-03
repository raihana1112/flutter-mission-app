import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mission/components/ads_footer.dart';
import 'package:mission/components/button.dart';
import 'package:mission/components/dropdown_field.dart';
import 'package:mission/components/input_field.dart';

class PayoutsPage extends StatefulWidget {
  const PayoutsPage({super.key});
  @override
  State<PayoutsPage> createState() => _PayoutsPageState();
}
class _PayoutsPageState extends State<PayoutsPage> {
  String? selectedMethod;

  final TextEditingController accountNameController =
      TextEditingController(text: "user123");
  final TextEditingController paymentNumberController =
      TextEditingController(text: "081234567890");

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
          "Payouts",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

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
                      "Payout Request",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 30),

                    CustomDropdownField(
                      label: "Method",
                      value: selectedMethod,
                      items: const ["Bank Transfer", "OVO", "GoPay", "DANA"],
                      onChanged: (value) {
                        setState(() {
                          selectedMethod = value;
                        });
                      }, width: null, hintText: 'Select Payout Method',
                    ),

                    const SizedBox(height: 8),

                    /// Account Name Input
                    CustomInputField(
                      label: "Account Name",
                      controller: accountNameController,
                      hintText: "user123",
                      width: 370,
                      fillColor: Colors.grey[200]
                    ),

                    const SizedBox(height: 8),

                    /// Payment Number Input
                    CustomInputField(
                      label: "Payment Number",
                      controller: paymentNumberController,
                      hintText: "081234567890",
                      width: 370,
                      fillColor: Colors.grey[200]
                    ),

                    const SizedBox(height: 8),

                    CustomDropdownField(
                      label: "Payout Amount",
                      value: selectedMethod,
                      items: const ["Rp. 25.000", "Rp.50.000", "Rp.75.000", "Rp.100.000", "Rp.150.000", "Rp.200.000"],
                      onChanged: (value) {
                        setState(() {
                          selectedMethod = value;
                        });
                      }, width: null, hintText: 'Select Payout Amount',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),


              /// Logout Button
              CustomButton(
                text: "Payout",
                onPressed: () {
                  context.push('/payout-success');
                },
                width: 430,
              ),
              const SizedBox(height: 16),


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
