import 'package:flutter/material.dart';
import 'package:images/models/image_model.dart';

class BannerImage extends StatelessWidget {
  final ImageModel image;
  const BannerImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(child: Image.network(image.downloadUrl)),
    );
  }
}
