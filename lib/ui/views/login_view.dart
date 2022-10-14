import 'package:flutter/material.dart';
import 'package:teikoku_firebase_auth/ui/widgets/custom_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

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
            icon: Icons.lock,
            margin: EdgeInsets.only(bottom: 6),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password",
              style: TextStyle(
                  color: Color(0xff3A2618),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      );
    }

    Widget loginButton() {
      return Container(
        width: 250,
        height: 53,
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
                  primary: const Color(0xff3A2618),
                ),
          ),
          child: ElevatedButton(
            onPressed: () {
              // Respond to button press
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ))),
            child: const Text(
              'Log In',
              style: TextStyle(
                color: Color(0xffFAE1DF),
              ),
            ),
          ),
        ),
      );
    }

    Widget tacButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Text(
            "Don't have an account? ",
            style: TextStyle(
              color: Color(0xff3A2618),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              "Register",
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
              loginButton(),
              tacButton(),
            ],
          ),
        ),
      ),
    );
  }
}
