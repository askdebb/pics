class ImageModel {
  int id;
  String url;
  String title;

  ImageModel({required this.id, required this.url, required this.title});

  ImageModel.fromJson(Map<String, dynamic> parsedJsonMap)
      : id = parsedJsonMap['id'],
        url = parsedJsonMap['url'],
        title = parsedJsonMap['title'];
}
