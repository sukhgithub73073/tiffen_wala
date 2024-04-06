import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:tiffen_wala/src/data/repository/register_repo.dart';

typedef AppRunner = FutureOr<void> Function();

class AppInjector {
  static Future<void> init({
    required AppRunner appRunner,
  }) async {
    await _initDependencies();
    appRunner();
  }

  static Future<void> _initDependencies() async {
    await GetIt.I.allReady();
    GetIt.I.registerSingleton<RegisterRepository>(RegisterRepositoryImp());


  }
}