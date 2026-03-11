import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:images/constants/app_contstanst.dart';
import 'package:images/models/image_model.dart';

class HomeService {
  Future<List<ImageModel>> fetchPhotos() async {
    final uri = Uri.parse(AppContstanst.baseUrl);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final photos = data.map((json) => ImageModel.fromJson(json)).toList();
      return photos;
    } else {
      throw Exception('Failed to load photos');
    }
  }
}
