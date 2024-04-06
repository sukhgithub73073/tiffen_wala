
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiffen_wala/src/core/app_button.dart';
import 'package:tiffen_wala/src/core/app_colors.dart';
import 'package:tiffen_wala/src/core/app_input_field.dart';
import 'package:tiffen_wala/src/core/app_text_view.dart';
import 'package:tiffen_wala/src/core/common_space.dart';

class SuccessDailog extends StatelessWidget {
  final Function() onTap;
  final String title;

  final String message;

  final Function()? dismiss;

  const SuccessDailog(
      {super.key,
      required this.onTap,
      this.dismiss,
      required this.message,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [mainView()],
    );
  }

  Widget mainView() {
    return Column(
      children: [
        TextView(
          text: "$title",
          color: colorGreen,
          textSize: 15.sp,
          textAlign: TextAlign.center,
          style: AppTextStyleEnum.bold,
          fontFamily: Family.bold,
          lineHeight: 1.3,
        ),
        spaceVertical(space: 10.h),
        TextView(
          text: "$message",
          color: colorBlack,
          textSize: 12.sp,
          textAlign: TextAlign.center,
          style: AppTextStyleEnum.medium,
          fontFamily: Family.medium,
          lineHeight: 1.3,
        ),
        spaceVertical(space: 20.h),
        AppSimpleButton(
          onDoneFuction: onTap,
          buttonBackgroundColor: colorPrimary,
          nameText: "Ok",
          textSize: 18.sp,
        ),
      ],
    );
  }
}
