import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final Dio _dio = Dio();

  // With Dio
  /*Future<List<dynamic>> fetchData() async {
    try {
      final response = await _dio.get('https://fruityvice.com/api/fruit/all');
      if (response.statusCode == 200) {
        //print('response.data : ${response.data}');
        return response.data;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }*/

  // With http
  Future<List<dynamic>> fetchData() async {
    try {
      final response =
          await http.get(Uri.parse('https://fruityvice.com/api/fruit/all'));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
