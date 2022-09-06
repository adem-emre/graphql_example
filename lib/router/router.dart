
import 'package:auto_route/annotations.dart';
import 'package:graphql_example/screens/home_view.dart';
import 'package:graphql_example/screens/rocket_detail.dart';

@MaterialAutoRouter(

  routes: [
    AutoRoute(page: HomeView,initial: true),
    AutoRoute(page: RocketDetail)
  ])
class $AppRouter{}