import 'dart:convert';

AuthModel authFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
  AuthModel({
    this.id,
    this.lastName,
    this.firstName,
    this.phoneNumber,
    this.location,
    this.address,
    this.password,
    this.balance,
    this.usersType,
    this.currentCountry,
    this.residentCardPhoto,
    this.avatarPhoto,
    this.activeAccount,
  });

  String? id;
  String? lastName;
  String? firstName;
  String? phoneNumber;
  String? location;
  String? address;
  String? password;
  int? balance;
  String? usersType;
  String? currentCountry;
  String? residentCardPhoto;
  String? avatarPhoto;
  bool? activeAccount;

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        id: json["id"],
        lastName: json["lastName"],
        firstName: json["firstName"],
        phoneNumber: json["phoneNumber"],
        location: json["location"],
        address: json["address"],
        password: json["password"],
        balance: json["balance"],
        usersType: json["usersType"],
        currentCountry: json["currentCountry"],
        residentCardPhoto: json["residentCardPhoto"],
        avatarPhoto: json["avatarPhoto"],
        activeAccount: json["activeAccount"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "lastName": lastName,
        "firstName": firstName,
        "phoneNumber": phoneNumber,
        "location": location,
        "address": address,
        "password": password,
        "balance": balance,
        "usersType": usersType,
        "currentCountry": currentCountry,
        "residentCardPhoto": residentCardPhoto,
        "avatarPhoto": avatarPhoto,
        "activeAccount": activeAccount,
      };
}
