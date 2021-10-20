import 'package:architecture_bloc/src/features/scroll_infinity/blocs/post_bloc.dart';
import 'package:architecture_bloc/src/features/scroll_infinity/models/events/posty.dart';
import 'package:architecture_bloc/src/features/scroll_infinity/services/post_service.dart';
import 'package:architecture_bloc/src/pages/booklist_page.dart';
import 'package:architecture_bloc/src/router.gr.dart';
// import 'package:architecture_bloc/src/screens/post_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

  final router = AppRouter();

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routeInformationParser: router.defaultRouteParser(), 
      routerDelegate: AutoRouterDelegate(router),
      debugShowCheckedModeBanner: false,
      builder: (_, router) => BlocProvider(
        create: (_) => PostBloc(service: PostService())..add(PostEvent.fetch()),
        child: const  BookListPage(),
      )
    );
  }
}