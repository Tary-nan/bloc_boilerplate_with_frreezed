// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import 'pages/book_detail_page.dart' as _i4;
import 'pages/booklist_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    BookListRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.BookListPage());
    },
    BookDetailsRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.BookDetailsPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(BookListRoute.name, path: '/'),
        _i1.RouteConfig(BookDetailsRoute.name, path: '/book-details-page')
      ];
}

class BookListRoute extends _i1.PageRouteInfo<void> {
  const BookListRoute() : super(name, path: '/');

  static const String name = 'BookListRoute';
}

class BookDetailsRoute extends _i1.PageRouteInfo<void> {
  const BookDetailsRoute() : super(name, path: '/book-details-page');

  static const String name = 'BookDetailsRoute';
}
