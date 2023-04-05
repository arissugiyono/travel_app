import 'package:airplane_app/cubit/pages_cubit.dart';
import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class customButtonNavigationItem extends StatelessWidget {
  final String imageUrl;
  final int index;

  const customButtonNavigationItem({
    super.key,
    required this.imageUrl,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PagesCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PagesCubit>().state == index
                ? kPrimaryColor
                : kGreyColor,
          ),
        
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
              color: context.read<PagesCubit>().state == index
                  ? kPrimaryColor
                  : kTransparentColor,
              borderRadius: BorderRadius.circular(18),
            ),
          )
        ],
      ),
    );
  }
}
