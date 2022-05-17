import 'package:auto_route/auto_route.dart';
import 'package:bloc_freezed_auto_route/models/data_model.dart';
import 'package:bloc_freezed_auto_route/screens/detail_page.dart';
import 'package:bloc_freezed_auto_route/screens/landing_page.dart';
import 'package:flutter/material.dart';

part 'custom_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: [
  AutoRoute(page: LandingPage, initial: true),
  AutoRoute(page: DetailPage),
])
class AppRouter extends _$AppRouter {}
