import 'dart:convert';

class Coffee {
  String id;
  String name;
  String description;
  double price;
  String imagePath;
  DateTime createdAt;

  Coffee({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.createdAt,
  });

  factory Coffee.fromRawJson(String str) => Coffee.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Coffee.fromJson(Map<String, dynamic> json) => Coffee(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        imagePath: json["imagePath"],
        createdAt: DateTime.parse(json['createdAt']).toLocal(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "imagePath": imagePath,
        "createdAt": createdAt,
      };
}
