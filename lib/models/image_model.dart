// ignore_for_file: public_member_api_docs, sort_constructors_first
class ImageModel {
  final String thumb, small, large;

  ImageModel({
    required this.thumb,
    required this.small,
    required this.large,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      thumb: json['thumb'],
      small: json['small'],
      large: json['large'],
    );
  }
}
