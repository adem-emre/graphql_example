import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:graphql_example/router/router.gr.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String readRockets = """
{
  rockets {
    name
    id
    description
    success_rate_pct
  }
}

""";

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Query(
          options: QueryOptions(document: gql(readRockets)),
          builder: (QueryResult result, {  refetch, fetchMore }) {
    if (result.hasException) {
        return Text(result.exception.toString());
    }

    if (result.isLoading) {
      return const Text('Loading');
    }
    var rocketList = result.data?["rockets"] as List;

    return ListView.builder(
      itemCount: rocketList.length,
      itemBuilder: (context,index){
      return ListTile(
        
        leading: CircleAvatar(child: Text(rocketList[index]["success_rate_pct"].toString())),
        title:Text(rocketList[index]["name"] ),
        subtitle: Text(rocketList[index]["description"]),
        onTap: (){
          context.router.push(RocketDetailRoute(rocketId: rocketList[index]["id"]));
        },
      );
    });
    
  },
          
          ),
    );
  }
}
