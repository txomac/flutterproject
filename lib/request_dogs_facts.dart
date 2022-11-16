import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RequestDogsFactsPages extends StatelessWidget {
  const RequestDogsFactsPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<http.Response>(
        future: http.get(Uri.parse("https://dog-api.kinduff.com/api/facts")),
        builder: (context, snapshot) {
          if(snapshot.hasData /*&& snapshot.data != null*/){
            return Text(snapshot.data?.body ?? "Pas de donnée :(");
          }else if (snapshot.hasError){
            return Text("Impossible de récupérer des infos :(");
          }else if(snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }else return Container();
        }
      ),
    );
  }
}
