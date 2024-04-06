import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tiffen_wala/src/core/app_bloc_providers.dart';
import 'package:tiffen_wala/src/core/app_injector.dart';
import 'package:tiffen_wala/src/core/app_strings.dart';
import 'package:tiffen_wala/src/core/app_theme.dart';
import 'package:tiffen_wala/src/ui/splash/splash_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await ScreenUtil.ensureScreenSize();
  await AppInjector.init(appRunner: () => runApp(SafeArea(bottom: true,top: false, child: MyApp())));
}


class MyApp extends StatelessWidget {
  final String fontFamily = "Montserrat";

  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return AppBlocProvider(
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        darkTheme: AppTheme.theme,
        home: SplashView(),
      ),
    );
  }
}
