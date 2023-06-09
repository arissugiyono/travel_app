import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

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
          title: 'Full Name',
          hintText: 'your full name',
          controller: nameController,
        );
      }

      ;

      Widget emailInput() {
        return customTextFormField(
          title: 'Email Address',
          hintText: 'your email',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return customTextFormField(
          title: 'Password',
          hintText: 'your password',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return customTextFormField(
          title: 'Hobby',
          hintText: 'your hobby',
          controller: hobbyController,
        );
      }

      Widget signUpButton() {
        return Container(
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is authSucess) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/bonus', (route) => false);
              } else if (state is authFailed) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    'error user sudah terdaftar',
                    textAlign: TextAlign.center,
                  ),
                ));
              }
            },
            builder: (context, state) {
              if (state is authLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return CustomButton(
                title: 'Sign Up',
                onPress: () {
                  context.read<AuthCubit>().signUp(
                      email: emailController.text,
                      password: passwordController.text,
                      name: nameController.text,
                      hooby: hobbyController.text);
                },
                width: 287,
                margin: EdgeInsets.only(top: 10),
              );
            },
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

    Widget singInButton() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-in');
            },
            child: Text(
              'have a account? Sign In',
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
            singInButton(),
          ],
        ),
      ),
    );
  }
}
