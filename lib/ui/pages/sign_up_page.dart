import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return customTextFormField(
            title: 'Full Name', hintText: 'your full name');
      }

      Widget emailInput() {
        return customTextFormField(
          title: 'Email Address',
          hintText: 'your email',
        );
      }

      Widget passwordInput() {
        return customTextFormField(
          title: 'Password',
          hintText: 'your password',
          obscureText: true,
        );
      }

      Widget hobbyInput() {
        return customTextFormField(title: 'Hobby', hintText: 'your hobby');
      }

      Widget signUpButton() {
        return Container(
          child: CustomButton(
            title: 'Sign Up',
            onPress: () {
              Navigator.pushNamed(context, '/bonus');
            },
            width: 287,
            margin: EdgeInsets.only(top: 10),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            signUpButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
            onPressed: () {},
            child: Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline,
              ),
            )),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            //title
            title(),
            // input section
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
