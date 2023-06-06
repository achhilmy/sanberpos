import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sanber_pos/config/base_url/base_url.dart';
import 'package:sanber_pos/data/product/category_model.dart';
import 'package:sanber_pos/data/product/post_category_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import '../config/config.dart';
import '../data/product/post_model.dart';
import '../data/product/user_mode.dart';
import 'package:http/http.dart' as http;

part 'auth_services.dart';
part 'category_services.dart';
part 'user_services.dart';
