import 'package:flutter/material.dart';
import 'package:images/services/home_service.dart';

class HomeProvider extends ChangeNotifier {
  final HomeService homeService = HomeService();
  bool isLoading = false;
  List photos = [];
  String? error;

  Future<void> fetchPhotos() async {
    isLoading = true;
    photos = [];
    error = null;
    notifyListeners();
    try {
      final servicePhoto = await homeService.fetchPhotos();
      photos = servicePhoto;
    } catch (e) {
      error = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
