

import 'package:flutter/material.dart';
import 'package:graphql_example/router/router.gr.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _client = ValueNotifier(GraphQLClient(link: HttpLink("https://api.spacex.land/graphql/"), cache: GraphQLCache()));
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: _client,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: _appRouter.delegate(),      
      routeInformationParser: _appRouter.defaultRouteParser(),   
      ),
    );
  }
}
