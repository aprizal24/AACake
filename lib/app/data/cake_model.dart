import 'dart:convert';

CakeModel cakeModelFromJson(String str) => CakeModel.fromJson(json.decode(str));

String cakeModelToJson(CakeModel data) => json.encode(data.toJson());

class CakeModel {
  List<Result> results;
  int offset;
  int number;
  int totalResults;

  CakeModel({
    required this.results,
    required this.offset,
    required this.number,
    required this.totalResults,
  });

  factory CakeModel.fromJson(Map<String, dynamic> json) => CakeModel(
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        offset: json["offset"],
        number: json["number"],
        totalResults: json["totalResults"],
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "offset": offset,
        "number": number,
        "totalResults": totalResults,
      };
}

class Result {
  int id;
  String title;
  String image;
  ImageType imageType;

  Result({
    required this.id,
    required this.title,
    required this.image,
    required this.imageType,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        imageType: imageTypeValues.map[json["imageType"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "imageType": imageTypeValues.reverse[imageType],
      };
}

enum ImageType { JPG }

final imageTypeValues = EnumValues({"jpg": ImageType.JPG});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}