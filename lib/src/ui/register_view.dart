import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiffen_wala/src/core/app_assets.dart';
import 'package:tiffen_wala/src/core/app_button.dart';
import 'package:tiffen_wala/src/core/app_colors.dart';
import 'package:tiffen_wala/src/core/app_dialog.dart';
import 'package:tiffen_wala/src/core/app_image_view.dart';
import 'package:tiffen_wala/src/core/app_input_field.dart';
import 'package:tiffen_wala/src/core/app_strings.dart';
import 'package:tiffen_wala/src/core/app_tap_widget.dart';
import 'package:tiffen_wala/src/core/app_text_view.dart';
import 'package:tiffen_wala/src/core/common_space.dart';
import 'package:tiffen_wala/src/core/dialog_widgets/failure_message_dialog.dart';
import 'package:tiffen_wala/src/core/dialog_widgets/success_message_dialog.dart';
import 'package:tiffen_wala/src/data/blocs/register_bloc/register_bloc.dart';
import 'package:tiffen_wala/src/extension/app_extension.dart';
import 'package:tiffen_wala/src/utility/validation_util.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var onwerNameController = TextEditingController(text: "Sukhmander Singh");
  var onwerMobileController = TextEditingController(text: "7307372923");
  var onwerEmailController = TextEditingController(text: "sukhmandersingh73073@gmail.com");
  var bussinessNameController = TextEditingController(text: "TDI Katani Sweet Dhaba");
  var radiusController = TextEditingController(text: "20");
  var addressController = TextEditingController(text: "Airport road near karam dharam dabha SAS");
  var passwordController = TextEditingController(text: "Qwerty@123");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                border: Border.all(color: colorSecendry, width: 3.w),
                color: colorWhite,
                shape: BoxShape.circle),
            child: Center(
              child: ImageView(
                margin: EdgeInsets.all(20.w),
                url: AppAssets.logo,
                imageType: ImageType.asset,
              ),
            ),
          ),
          spaceVertical(space: 10.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              children: [
                //

                spaceVertical(space: 20.h),
                CustomTextField(
                    controller: onwerNameController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    paddingHorizontal: 20.0,
                    hasViewHight: false,
                    labelText: AppStrings.onwerName,
                    hintText: AppStrings.enterOnwerNameHere,
                    numberOfLines: 1,
                    hintFontWeight: FontWeight.w400,
                    hintTextColor: colorGray.withOpacity(0.6)),
                spaceVertical(space: 20.h),

                CustomTextField(
                    controller: onwerMobileController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    paddingHorizontal: 20.0,
                    hasViewHight: false,
                    labelText: AppStrings.onwerMobileNumber,
                    hintText: AppStrings.enterOnwerMobileNumberHere,
                    numberOfLines: 1,
                    hintFontWeight: FontWeight.w400,
                    hintTextColor: colorGray.withOpacity(0.6)),
                spaceVertical(space: 20.h),
                CustomTextField(
                    controller: onwerEmailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    paddingHorizontal: 20.0,
                    hasViewHight: false,
                    labelText: AppStrings.onwerEmail,
                    hintText: AppStrings.enterOnwerEmailHere,
                    numberOfLines: 1,
                    hintFontWeight: FontWeight.w400,
                    hintTextColor: colorGray.withOpacity(0.6)),
                spaceVertical(space: 20.h),
                CustomTextField(
                    controller: bussinessNameController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    paddingHorizontal: 20.0,
                    hasViewHight: false,
                    labelText: AppStrings.bussinessName,
                    hintText: AppStrings.enterOnwerbussinessNameHere,
                    numberOfLines: 1,
                    hintFontWeight: FontWeight.w400,
                    hintTextColor: colorGray.withOpacity(0.6)),
                spaceVertical(space: 20.h),
                CustomTextField(
                    controller: radiusController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    paddingHorizontal: 20.0,
                    hasViewHight: false,
                    labelText: AppStrings.radius,
                    hintText: AppStrings.enterAddressHere,
                    numberOfLines: 1,
                    hintFontWeight: FontWeight.w400,
                    hintTextColor: colorGray.withOpacity(0.6)),
                spaceVertical(space: 20.h),
                CustomTextField(
                    controller: addressController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    paddingHorizontal: 20.0,
                    hasViewHight: false,
                    labelText: AppStrings.address,
                    hintText: AppStrings.enterAddressHere,
                    numberOfLines: 1,
                    hintFontWeight: FontWeight.w400,
                    hintTextColor: colorGray.withOpacity(0.6)),
                spaceVertical(space: 30.h),

                CustomTextField(
                    controller: passwordController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    paddingHorizontal: 20.0,
                    hasViewHight: false,
                    labelText: "Password",
                    hintText: "***********",
                    numberOfLines: 1,
                    borderColor: colorInputBorder,
                    hintFontWeight: FontWeight.w400,
                    hintTextColor: colorInputBorder.withOpacity(0.6)),
                spaceVertical(space: 20.h),



                BlocConsumer<RegisterBloc, RegisterState>(
                  listener: (context, state) {
                    if (state is RegisterSuccess) {
                      appDialog(
                          context: context,
                          child: SuccessDailog(
                            title: "Successfully",
                            onTap: () {
                              context.back();
                              context.back();
                            },
                            message: "${state.userModel.message}",
                          ));
                    } else if (state is RegisterError) {
                      appDialog(
                          context: context,
                          child: ErrorDailog(
                            title: "Error",
                            onTap: () {
                              context.back();
                            },
                            message: "${state.error}",
                          ));
                    }
                  },
                  builder: (context, state) {
                    return Container(
                      height: 40.h,
                      width: double.infinity,
                      decoration: BoxDecoration(color: colorPrimary),
                      child: AppSimpleButton(
                        onDoneFuction: () async {
                          if (!ValidationUtil.mobileValidation(
                              mobile: onwerMobileController.text)) {
                          } else if (!ValidationUtil.emailValidation(
                              email: onwerEmailController.text)) {
                          } else if (!ValidationUtil.passwordValidation(
                              password: passwordController.text)) {
                          } else {
                            var map = {
                              "role_type": "Restaurant",
                              "name": onwerNameController.text,
                              "mobile": onwerMobileController.text,
                              "email": onwerEmailController.text,
                              "radius": radiusController.text,
                              "password": passwordController.text,
                              "address": addressController.text
                            };
                            context
                                .read<RegisterBloc>()
                                .add(DoRegisterEvent(map: map));
                          }
                        },
                        buttonBackgroundColor: colorPrimary,
                        nameText: "Register",
                        textSize: 18.sp,
                      ),
                    );
                  },
                ),
                spaceVertical(space: 10.h),
                TapWidget(
                  onTap: () {},
                  child: TextView(
                    text: "Have an account ? Login",
                    color: colorGray,
                    textSize: 12.sp,
                    textAlign: TextAlign.center,
                    style: AppTextStyleEnum.medium,
                    fontFamily: Family.medium,
                    lineHeight: 1.3,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
