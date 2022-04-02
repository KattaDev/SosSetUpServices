// To parse this JSON data, do
//
//     final shop = shopFromJson(jsonString);

import 'dart:convert';

Shop shopFromJson(String str) => Shop.fromJson(json.decode(str));

String shopToJson(Shop data) => json.encode(data.toJson());

class Shop {
    Shop({
        this.id,
        this.title,
        this.shopType,
        this.logoPhoto,
        this.photoList,
        this.about,
        this.caption,
    });

    String? id;
    String? title;
    String? shopType;
    String? logoPhoto;
    List<String>? photoList;
    String? about;
    String? caption;

    factory Shop.fromJson(Map<String, dynamic> json) => Shop(
        id: json["id"],
        title: json["title"],
        shopType: json["shopType"],
        logoPhoto: json["logoPhoto"],
        photoList: List<String>.from(json["photoList"].map((x) => x)),
        about: json["about"],
        caption: json["caption"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "shopType": shopType,
        "logoPhoto": logoPhoto,
        "photoList": List<dynamic>.from(photoList!.map((x) => x)),
        "about": about,
        "caption": caption,
    };
}
