
import 'package:architecture_bloc/src/pages/book_detail_page.dart';
import 'package:architecture_bloc/src/pages/booklist_page.dart';
import 'package:auto_route/auto_route.dart';
export 'router.gr.dart';


@MaterialAutoRouter(    
  replaceInRouteName: 'Page,Route',    
  routes: <AutoRoute>[    
    AutoRoute(page: BookListPage, initial: true),    
    AutoRoute(page: BookDetailsPage),    
  ],    
)    
class $AppRouter {}
