import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sanber_pos/config/print_helper.dart';
import 'package:sanber_pos/config/services_locator.dart';
import 'package:sanber_pos/config/shared_pref_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'base_url/base_url.dart';

part 'dio_http.dart';
