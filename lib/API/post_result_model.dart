import 'dart:convert';

import 'package:http/http.dart' as http;
// class model
class PostResult {
  String id;
  String name;
  String job;
  String created;
  //  Constructor
  PostResult({this.id, this.name, this.job, this.created});
  // Factory Method
  factory PostResult.creatPostResult(Map<String, dynamic> object) {
    return PostResult(
      id: object['id'],
      name: object['name'],
      job: object['job'],
      created: object['createdAt'],
    );
  }
  // memanggil api 
  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiUrl = "https://reqres.in/api/users";
    var apiResult = await http.post(apiUrl, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.creatPostResult(jsonObject);
  }
}
