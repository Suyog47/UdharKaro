import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:udhaarkaroapp/apiClass/user.dart';

class UserApi {
  static const ROOT = 'https://www.pinsoutinnovation.com/udhaarkaro/pinsoutUdharKaro.php';
  static const String _GET_ACTION = 'GET_ALL';

  static Future<List<user>> getUsers() async {
    try {
      var map = new Map<String, dynamic>();
      map["action"] = _GET_ACTION;
      final response = await http.post(ROOT, body: map);
      print("getEmployees >> Response:: ${response.body}");
      if (response.statusCode == 200) {
        List<user> list = parsePhotos(response.body);
        print("length: ");
        print(list.length);
        return list;
      } else {
        throw List<user>();
      }
    } catch (e) {
      return List<user>();
    }
  }

  static List<user> parsePhotos(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<user>((json) => user.fromJson(json)).toList();
  }

}
