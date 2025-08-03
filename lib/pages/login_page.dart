import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';
import '../components/input_field.dart';
import '../components/button.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AutoSizeText(
                  "MISS",
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                  maxLines: 1,
                ),
                const AutoSizeText(
                  "IONS",
                  style: TextStyle(
                    fontSize: 90,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                  maxLines: 1,
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),

                /// Email Input
                CustomInputField(
                  label: "Email",
                  controller: emailController,
                  hintText: "admin@gmail.com",
                ),

                /// Password Input
                CustomInputField(
                  label: "Password",
                  controller: passwordController,
                  isPassword: true,
                  hintText: "********************",
                ),
                const SizedBox(height: 15),

                /// Sign In Button
                CustomButton(
                  text: "Sign In to Missions",
                  onPressed: () {
                    context.go('/home');
                  },
                ),

                const SizedBox(height: 20),

                /// Register Row
                Wrap(
                alignment: WrapAlignment.center,
                children: [
                  const AutoSizeText("Don’t have an account? "),
                  GestureDetector(
                    onTap: () {
                      context.go('/sign-up');
                    },
                    child: const AutoSizeText(
                      "Register here",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),

                const SizedBox(height: 8),

                /// Guest Mode
                GestureDetector(
                  onTap: () {
                    context.go('/home');
                  },
                  child: const Text(
                    "Guest Mode",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
                const SizedBox(height: 50),

                /// Privacy Note
                const Text("Your Privacy, Our Priority"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
