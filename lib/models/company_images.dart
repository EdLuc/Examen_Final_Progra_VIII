import 'dart:convert';

class CompanyImages {
  CompanyImages(
      {required this.filePath,
      required this.height,
      required this.width,
      required this.id,});

  String filePath;
  int? height;
  int? width;
  int id;


  factory CompanyImages.fromJson(String str) => CompanyImages.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyImages.fromMap(Map<String, dynamic> json) => CompanyImages(
        filePath: json["file_path"],
        height: json["height"],
        width: json["width"],
        id: json["id"] ?? 0,
      );

  Map<String, dynamic> toMap() => {
        "file_path": filePath,
        "height": height,
        "width": width,
        "id": id,
      };
}
