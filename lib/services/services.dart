import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sanber_pos/config/endpoint.dart';
import 'package:sanber_pos/data/category_model/category_list_model.dart';
import 'package:sanber_pos/data/category_model/category_model.dart';
import 'package:sanber_pos/data/post_model/post_model.dart';
import 'package:sanber_pos/data/product_model/product_model.dart';
import 'package:sanber_pos/data/sign_in_model/sign_in_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/config.dart';
part 'auth_services.dart';
part 'category_services.dart';
part 'api_services.dart';
part 'post_repository.dart';
part 'product_services.dart';
