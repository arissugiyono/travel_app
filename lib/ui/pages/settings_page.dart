import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class settingsPage extends StatelessWidget {
  const settingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is authFailed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                'error user sudah logout',
                textAlign: TextAlign.center,
              ),
            ));
          } else if (state is AuthInitial) {
            Navigator.pushNamedAndRemoveUntil(
                // navigasi sudah berhasil dan masuk ke sign up kembali
                context,
                '/sign-up',
                (route) => false);
          }
        },
        builder: (context, state) {
          if (state is authLoading) {
            return CircularProgressIndicator();
          }
          return Center(
            child: CustomButton(
              onPress: () {
                context.read<AuthCubit>().signOut();
              },
              title: 'sing Out',
              width: 200,
            ),
          );
        },
      ),
    );
  }
}
