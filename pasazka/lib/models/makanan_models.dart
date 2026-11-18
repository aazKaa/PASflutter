import 'dart:convert';

MakananModel makananModelFromJson(String str) =>
    MakananModel.fromJson(json.decode(str));

String makananModelToJson(MakananModel data) => json.encode(data.toJson());

class MakananModel {
  final List<Category> categories;

  MakananModel({required this.categories});

  factory MakananModel.fromJson(Map<String, dynamic> json) {
    final categoriesJson = json["categories"];
    if (categoriesJson is! List<dynamic>) {
      throw const FormatException("Invalid categories in API response");
    }

    return MakananModel(
      categories: categoriesJson.map((categoryJson) {
        if (categoryJson is! Map<String, dynamic>) {
          throw const FormatException("Invalid category in API response");
        }
        return Category.fromJson(categoryJson);
      }).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
  };
}

class Category {
  final String namaMakanan;
  final String hargaMakanan;
  final String deskripsiMakanan;
  final String gambarMakanan;

  Category({
    required this.namaMakanan,
    required this.hargaMakanan,
    required this.deskripsiMakanan,
    required this.gambarMakanan,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    namaMakanan: json["namaMakanan"] as String,
    hargaMakanan: json["hargaMakanan"] as String,
    deskripsiMakanan: json["deskripsiMakanan"] as String,
    gambarMakanan: json["gambarMakanan"] as String,
  );

  Map<String, dynamic> toJson() => {
    "namaMakanan": namaMakanan,
    "hargaMakanan": hargaMakanan,
    "deskripsiMakanan": deskripsiMakanan,
    "gambarMakanan": gambarMakanan,
  };
}
