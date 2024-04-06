import 'package:flutter/material.dart';
import 'package:tiffen_wala/src/core/app_colors.dart';
import 'package:tiffen_wala/src/core/app_text_view.dart';


class AppSimpleButton extends StatelessWidget {
  final Function onDoneFuction;
  final String nameText;
  final dynamic textSize;

  final Color? buttonBackgroundColor;
  final Color? buttonTextColor;
  final ButtonStyle? buttonStyle;
  final EdgeInsets? buttonPadding;

  const AppSimpleButton(
      {this.textSize,
        this.buttonStyle,
        required this.onDoneFuction,
        required this.nameText,
        this.buttonTextColor,
        this.buttonBackgroundColor,
        Key? key, this.buttonPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onDoneFuction();
      },

      style: buttonStyle ??
          ElevatedButton.styleFrom(
            backgroundColor: buttonBackgroundColor,
            padding: buttonPadding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
      child: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Center(
            child: TextView(
              text: nameText,
              color: buttonTextColor ?? colorWhite,
              textSize: textSize ?? 18.0,
            )),
      ),
    );
  }
}