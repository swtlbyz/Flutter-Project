import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiPostResult {
  String id;
  String name;
  String job;
  String created;

  ApiPostResult({this.id, this.name, this.job, this.created});

  factory ApiPostResult.createPostResult(Map<String, dynamic> object) {
    return ApiPostResult(
        id: object['id'].toString(),
        name: object['name'],
        job: object['job'],
        created: object['createdAt']);
  }

  static Future<ApiPostResult> connectToApi(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult = await http.post(apiURL, body: {
      "name": name,
      "job": job,
    });

    var jsonObject = json.decode(apiResult.body);
    return ApiPostResult.createPostResult(jsonObject);
  }
}
