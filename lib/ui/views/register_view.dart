import 'package:flutter/material.dart';
import 'package:teikoku_firebase_auth/ui/widgets/custom_button.dart';
import 'package:teikoku_firebase_auth/ui/widgets/custom_text_form_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logoImage() {
      return Container(
        width: 194,
        height: 118,
        margin: const EdgeInsets.only(bottom: 24),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/logo_teikoku.png"),
          ),
        ),
      );
    }

    Widget formSection() {
      return Column(
        children: const [
          CustomTextFormField(
            labelText: "Email",
            hintText: "Please enter your email",
            icon: Icons.email,
            margin: EdgeInsets.only(bottom: 16),
          ),
          CustomTextFormField(
            labelText: "Password",
            hintText: "Please enter your password",
            obscureText: true,
            icon: Icons.lock,
            margin: EdgeInsets.only(bottom: 18),
          ),
        ],
      );
    }

    Widget registerButton() {
      return CustomButton(text: "Register", onPressed: () {});
    }

    Widget loginViewButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text(
            "Already have an account? ",
            style: TextStyle(
              color: Color(0xff3A2618),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              "Log In",
              style: TextStyle(
                  color: Color(0xff3A2618), fontWeight: FontWeight.w500),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFAE1DF),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 55),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logoImage(),
              formSection(),
              registerButton(),
              loginViewButton(),
            ],
          ),
        ),
      ),
    );
  }
}
