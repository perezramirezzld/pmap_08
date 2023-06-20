import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter_pmap08/constants.dart';

class ApiService {
  Future<String> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.geoUsersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return response.body;
      }
    } catch (e) {
      log(e.toString());
    }
    return "";
  }
}
