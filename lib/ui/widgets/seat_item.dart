import 'package:airplane_app/cubit/seat_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class seatItem extends StatelessWidget {
  final String id;
  bool isAvaliable;

  seatItem({super.key, this.isAvaliable = true, required this.id});

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);
    imageSwitch() {
      if (!isAvaliable) {
        return kImageUnavailable;
      } else {
        if (isSelected) {
          return kImageSelected;
        } else {
          return kImageAvaliable;
        }
      }
      // switch (status) {
      //   case 0:
      //     return kImageAvaliable;

      //   case 1:
      //     return kImageSelected;

      //   case 2:
      //     return kImageUnavailable;

      //   default:
      // }
    }

    return GestureDetector(
      onTap: () {
        if (isAvaliable) {
          context.read<SeatCubit>().selectSeat(id);
        }
       
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imageSwitch().toString()))),
      ),
    );
  }
}
