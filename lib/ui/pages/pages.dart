import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:loading_overlay/loading_overlay.dart';
import 'package:sanber_pos/blocs/Authentication_cubit/authentication_cubit.dart';
import 'package:sanber_pos/blocs/category_cubit/category_cubit.dart';
import 'package:sanber_pos/blocs/post_bloc/posts_bloc.dart';
import 'package:sanber_pos/blocs/product_cubit/product_cubit.dart';
import 'package:sanber_pos/config/shared/shared.dart';
import 'package:sanber_pos/ui/widgets/widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_page/splash_page.dart';
part 'login_page/login_page.dart';
part 'register/register_page.dart';
part 'register/status_page.dart';
part 'main_app/main_app.dart';
part 'product_page/product/product_page.dart';
part 'product_page/list_category_product.dart';
part 'product_page/category/category_list.dart';
part 'data_screen/data_screen.dart';
