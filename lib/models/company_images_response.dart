import 'dart:convert';

import 'models.dart';

class CompanyImages {
  CompanyImages({
    required this.id,
    required this.logos,
  });

  int id;
  List<Images> logos;

  factory CompanyImages.fromJson(String str) =>
      CompanyImages.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyImages.fromMap(Map<String, dynamic> json) => CompanyImages(
        id: json["id"],
        logos:
            List<Images>.from(json["logos"].map((x) => Images.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "logos": List<dynamic>.from(logos.map((x) => x.toMap())),
      };
}
