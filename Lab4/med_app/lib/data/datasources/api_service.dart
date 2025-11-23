import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://test-api-jlbn.onrender.com/v5';

  Future<Map<String, dynamic>> fetchFeed() async {
    return _get('feed');
  }

  Future<Map<String, dynamic>> fetchFeedDetails() async {
    return _get('feed/details');
  }

  Future<Map<String, dynamic>> _get(String path) async {
    final uri = Uri.parse('$_baseUrl/$path');
    final response = await http.get(uri);

    if (response.statusCode != 200) {
      throw ApiException(
        'Request to $path failed with status code ${response.statusCode}',
        statusCode: response.statusCode,
      );
    }

    return jsonDecode(response.body) as Map<String, dynamic>;
  }
}

class ApiException implements Exception {
  final String message;
  final int? statusCode;

  ApiException(this.message, {this.statusCode});

  @override
  String toString() => 'ApiException(statusCode: $statusCode, message: $message)';
}

