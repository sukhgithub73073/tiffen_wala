import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiffen_wala/src/data/blocs/register_bloc/register_bloc.dart';
import 'package:tiffen_wala/src/data/blocs/role_bloc/role_bloc.dart';

class AppBlocProvider extends StatelessWidget {
  final Widget child;
  final bool lazy;

  const AppBlocProvider({
    Key? key,
    required this.child,
    this.lazy = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(lazy: lazy, create: (_) => RoleBloc()),
        BlocProvider(lazy: lazy, create: (_) => RegisterBloc()),
      ],
      child: child,
    );
  }
}
