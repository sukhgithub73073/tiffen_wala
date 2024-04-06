import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiffen_wala/src/core/app_colors.dart';
import 'package:tiffen_wala/src/core/app_strings.dart';
import 'package:tiffen_wala/src/core/indicator.dart';
import 'package:tiffen_wala/src/core/shadow.dart';
import 'package:tiffen_wala/src/extension/app_extension.dart';
import 'package:tiffen_wala/src/ui/register_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WrapperIndicator(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/welcome_background.png"),
              fit: BoxFit.cover,
              alignment: Alignment.bottomLeft,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Welcome to",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 48.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            AppStrings.appName,
                            style: TextStyle(
                              fontSize: 48.sp,
                              fontWeight: FontWeight.w900,
                              color: orange100,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 52.w),
                          child: Text(
                            "Your favourite foods delivered fast at your door",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: dark50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 110.h,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 84.w,
                            child: const Divider(
                              color: white100,
                              thickness: 1,
                            ),
                          ),
                          Text(
                            "sign in with",
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: white100,
                            ),
                          ),
                          SizedBox(
                            width: 84.w,
                            child: const Divider(
                              color: white100,
                              thickness: 1,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 140.w,
                              height: 54.w,
                              padding: EdgeInsets.only(
                                left: 12.h,
                                right: 16.h,
                              ),
                              decoration: BoxDecoration(
                                color: white100,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(28.r),
                                ),
                                boxShadow: AppShadow.button,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/facebook_circle.svg",
                                    width: 30.w,
                                    height: 30.w,
                                  ),
                                  Expanded(
                                    child: Center(
                                        child: Text("facebook".toUpperCase())),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              width: 140.w,
                              height: 54.w,
                              padding: EdgeInsets.only(
                                left: 12.h,
                                right: 16.h,
                              ),
                              decoration: BoxDecoration(
                                color: white100,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(28.r),
                                ),
                                boxShadow: AppShadow.button,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/google_circle.svg",
                                    width: 30.w,
                                    height: 30.w,
                                  ),
                                  Expanded(
                                    child: Center(
                                      child: Text(("google").toUpperCase()),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      GestureDetector(
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          height: 54.w,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(28.r)),
                            border: Border.all(
                              color: white100,
                              width: 2,
                            ),
                            boxShadow: AppShadow.button,
                            color: white21,
                          ),
                          child: Text(
                            ("Start with phone"),
                            style: TextStyle(
                              color: white100,
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      RichText(
                        text: TextSpan(
                          text: ("Already have an account? "),
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16.sp,
                          ),
                          children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.pushScreen(
                                        nextScreen: RegisterScreen());
                                  },
                                text: ("Sign in"),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                )),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
