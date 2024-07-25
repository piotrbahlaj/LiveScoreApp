import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:live_score/core/constants/api_constants.dart';

final dio = Dio();
final String? apiKey = dotenv.env['API_KEY'];

Future<Map<String, dynamic>> fetchFootballFixtures() async {
  try {
    final String date = DateFormat('y-MM-d').format(DateTime.now());
    const String url = ApiConstants.footballUrl + ApiConstants.fixturesEndpoint;
    final response = await dio.get(
      '$url?date=$date',
      options: Options(
        headers: {
          'x-rapidapi-host': url,
          'x-rapidapi-key': apiKey,
        },
      ),
    );
    return response.data;
  } on DioException catch (e) {
    throw Exception('Failed to fetch data: $e');
  }
}

class ApiClient {}
