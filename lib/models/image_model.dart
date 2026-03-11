class ImageModel {
  String id;
  String author;
  int? width;
  int? height;
  String url;
  String downloadUrl;

  ImageModel({
    required this.id,
    required this.author,
    this.width,
    this.height,
    required this.url,
    required this.downloadUrl,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'].toString(),
      author: json['author'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      url: json['url'] as String,
      downloadUrl: json['download_url'] as String,
    );
  }
}
