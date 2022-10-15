import 'package:flutter/material.dart';
import 'package:teikoku_firebase_auth/ui/widgets/custom_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAE1DF),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 54),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hello, You're just signed in!", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),),
            CustomButton(text: "Log Out", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
