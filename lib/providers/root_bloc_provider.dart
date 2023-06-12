import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_pos/blocs/Authentication_cubit/authentication_cubit.dart';
import 'package:sanber_pos/blocs/category_cubit/category_cubit.dart';

import '../config/services_locator.dart';

class RootBlocProvider {
  final providers = <BlocProvider>[
    BlocProvider<AuthenticationCubit>(
      create: (_) => AuthenticationCubit(),
    ),
    BlocProvider<CategoryCubit>(
      create: (_) => CategoryCubit(),
    ),
    // BlocProvider(create: (_) => getIt<AuthenticationCubit>()),
  ];
}
