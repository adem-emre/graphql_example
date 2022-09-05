import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

String rocketById = """
  query getRocketById(\$rocketId : ID!){
    rocket(id: \$rocketId) {   
    active
    boosters
    company
  }
  }
""";

class RocketDetail extends StatelessWidget {
  const RocketDetail({Key? key, required this.rocketId}) : super(key: key);
  final String rocketId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rocket Detail"),
      ),
      body: Query(
          options: QueryOptions(
              document: gql(rocketById), variables: {'rocketId': rocketId}),
          builder: (QueryResult result, {refetch, fetchMore}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.isLoading) {
              return const Text('Loading');
            }
            var detail = result.data?["rocket"];
            return Column(
              children: [
                Text(detail["active"].toString()),
                Text(detail["boosters"].toString()),
                Text(detail["company"]),
              ],
            );
          }),
    );
  }
}
