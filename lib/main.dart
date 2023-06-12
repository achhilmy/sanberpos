import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanber_pos/config/global_key/navigator_key.dart';
import 'package:sanber_pos/config/router/root_generate_router.dart';
import 'package:sanber_pos/providers/root_bloc_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: RootBlocProvider().providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        navigatorKey: NavigatorKey.rootNavigatorKey,
        onGenerateRoute: RootRouter().generateRouter,
        // home: const SplashPages(),
      ),
    );
  }
}
