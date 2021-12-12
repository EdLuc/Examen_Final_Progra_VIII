import 'dart:convert';

class CompanyResponse {
  CompanyResponse(
      {required this.logo_path,
      required this.headquarters,
      required this.homepage,
      required this.id,
      required this.name,
      required this.origin_country});

  String logo_path;
  String headquarters;
  String homepage;
  int id;
  String name;
  String origin_country;

  factory CompanyResponse.fromJson(String str) => CompanyResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyResponse.fromMap(Map<String, dynamic> json) => CompanyResponse(
        logo_path: json["logo_path"],
        headquarters: json["headquarters"],
        homepage: json["homepage"],
        id: json["id"] ?? 0,
        name: json["name"],
        origin_country: json["origin_country"]
      );

  Map<String, dynamic> toMap() => {
        "logo_path": logo_path,
        "headquarters": headquarters,
        "homepage": homepage,
        "id": id,
        "name": name,
        "origin_country": origin_country
      };

}