import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teikoku_firebase_auth/services/auth_services.dart';
import 'package:teikoku_firebase_auth/ui/views/register_view.dart';
import 'package:teikoku_firebase_auth/ui/widgets/custom_button.dart';
import 'package:teikoku_firebase_auth/ui/widgets/custom_text_form_field.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
        children: [
          CustomTextFormField(
            controller: emailController,
            labelText: "Email",
            hintText: "Please enter your email",
            icon: Icons.email,
            margin: const EdgeInsets.only(bottom: 16),
          ),
          CustomTextFormField(
            controller: passwordController,
            labelText: "Password",
            hintText: "Please enter your password",
            obscureText: true,
            icon: Icons.lock,
            margin: const EdgeInsets.only(bottom: 6),
          ),
          const Align(
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
      return CustomButton(
          text: "Log In",
          onPressed: () {
            context.read<AuthService>().logIn(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
               );
          });
    }

    Widget registerViewButton() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Don't have an account? ",
            style: TextStyle(
              color: Color(0xff3A2618),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterView()));
            },
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
          padding: const EdgeInsets.symmetric(horizontal: 54),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logoImage(),
              formSection(),
              loginButton(),
              registerViewButton(),
            ],
          ),
        ),
      ),
    );
  }
}
