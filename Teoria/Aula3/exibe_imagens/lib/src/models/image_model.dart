class ImageModel {
  late String url;
  late String alt;

  ImageModel(this.url, this.alt);

  ImageModel.fromJson(decodedJson) {
    alt = decodedJson['photos'][0]['alt'];
    url = decodedJson['photos'][0]['src']['medium'];
  }
}
