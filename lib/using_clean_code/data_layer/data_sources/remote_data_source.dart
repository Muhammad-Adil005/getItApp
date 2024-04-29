// fruit_provider.dart

import 'package:dio/dio.dart';

class RemoteDataSource {
  final String baseUrl = 'https://fruityvice.com/api/fruit/all';
  // With Dio
  Future<List<dynamic>> fetchFruits() async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(baseUrl);

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  // With http

  // Future<List<dynamic>> fetchFruits() async {
  //   try {
  //     final response = await http.get(Uri.parse(baseUrl));
  //     if (response.statusCode == 200) {
  //       return json.decode(response.body);
  //     } else {
  //       throw Exception('Failed to load data');
  //     }
  //   } catch (e) {
  //     throw Exception('Failed to load data: $e');
  //   }
  // }
}
