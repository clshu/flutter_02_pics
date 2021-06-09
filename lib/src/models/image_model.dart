class ImageModel {
  final int id;
  final String url;
  final String title;

  ImageModel({required this.id, required this.url, required this.title});
  // Named constructor can not return a value
  // final prohibits the setters on id, url, title
  // So use factory. This is slightly different from Stephen's instruction
  factory ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    return ImageModel(
      id: parsedJson['id'],
      url: parsedJson['url'],
      title: parsedJson['title'],
    );
  }
}
