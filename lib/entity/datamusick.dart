
import 'package:flutter/foundation.dart';

class DataMusicks{

  final int id;
  final String name;
  final String description;
  final int created_at;

    DataMusicks(
        {
          @required this.id,
          @required this.name,
          @required this.description,
          @required this.created_at
        }
    );

  factory DataMusicks.fromJson(Map<String, dynamic> json){
    return DataMusicks(
      id : json['userId'] as int,
      name : json['title'] as String,
      description : json['artist'] as String,
      created_at : json['id'] as int,
    );
  }

    /*static Future<DataMusicks> connectToAPi(String all) async
    {
      String apiUrl = "https://madko.id/serv/v1/index.php/api/TrackMusic/getEvents";
      var apiResult = await http.post(apiUrl, body: {
        "genre" : all
      });

      var jsonObject = json.decode(apiResult.body);

      return DataMusicks.createdPostResult(jsonObject);
    }*/
}