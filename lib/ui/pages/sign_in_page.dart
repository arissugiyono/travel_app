import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:airplane_app/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Sign in \nwith your account',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
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

      Widget signInButton() {
        return Container(
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              if (state is authSucess) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/main-page', (route) => false);
              } else if (state is authFailed) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    'error user belum terdaftar',
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
                title: 'Sign In',
                onPress: () {
                  context.read<AuthCubit>().singIn(
                        email: emailController.text,
                        password: passwordController.text,
                      );
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
            emailInput(),
            passwordInput(),
            signInButton(),
          ],
        ),
      );
    }

    Widget singUpButton() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'don\'t account, Sign Up here',
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
            singUpButton(),
          ],
        ),
      ),
    );
  }
}
