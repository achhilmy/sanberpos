import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_pos/blocs/Authentication_cubit/authentication_cubit.dart';
import 'package:sanber_pos/blocs/category_cubit/category_cubit.dart';
import 'package:sanber_pos/blocs/product_cubit/product_cubit.dart';
import 'package:sanber_pos/blocs/profile_cubit/profile_cubit.dart';
import 'package:sanber_pos/services/services.dart';

class RootBlocProvider {
  PostRepository repository = PostRepository();
  final providers = <BlocProvider>[
    BlocProvider<AuthenticationCubit>(
      create: (_) => AuthenticationCubit(),
    ),
    BlocProvider<CategoryCubit>(
      create: (_) => CategoryCubit(),
    ),
    BlocProvider<ProductCubit>(
      create: (_) => ProductCubit(),
    ),
    BlocProvider<ProfileCubit>(
      create: (_) => ProfileCubit(),
    ),
    // BlocProvider<PostsBloc>(
    //   create: (_) => PostsBloc(),
    //   child: DataScreen(),
    // ),
  ];
}
