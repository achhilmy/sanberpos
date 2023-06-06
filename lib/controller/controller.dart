import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanber_pos/data/product/category_model.dart';
import 'package:sanber_pos/data/sign_in_model/sign_in_model.dart';
import 'package:sanber_pos/services/services.dart';
import 'package:http/http.dart' as http;

import '../config/router/route_name.dart';
import '../data/product/post_category_model.dart';
import '../data/product/user_mode.dart';
part 'auth_controller/auth_controller.dart';
part 'auth_controller/login_controller.dart';
part 'home_controller/category_controller.dart';
part 'home_controller/user_controller.dart';
part 'button_controller/button_controller.dart';
part 'home_controller/category_action_controller.dart';
