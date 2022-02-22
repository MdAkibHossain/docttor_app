// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.error,
    this.msg,
    required this.data,
  });

  bool? error;
  String? msg;
  Data data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        error: json["error"],
        msg: json["msg"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "msg": msg,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.name,
    this.firstname,
    this.lastname,
    this.type,
    this.email,
    this.username,
    this.mobile,
    this.address,
    this.dateOfBirth,
    this.gender,
    this.city,
    this.state,
    this.country,
    this.zipCode,
    this.photo,
    this.isExternal,
    required this.jwtToken,
  });

  int? id;
  String? name;
  String? firstname;
  String? lastname;
  String? type;
  String? email;
  String? username;
  String? mobile;
  String? address;
  String? dateOfBirth;
  String? gender;
  String? city;
  String? state;
  String? country;
  String? zipCode;
  String? photo;
  int? isExternal;
  List<JwtToken> jwtToken;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        type: json["type"],
        email: json["email"],
        username: json["username"],
        mobile: json["mobile"],
        address: json["address"],
        dateOfBirth: json["date_of_birth"],
        gender: json["gender"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        zipCode: json["zip_code"],
        photo: json["photo"],
        isExternal: json["is_external"],
        jwtToken: List<JwtToken>.from(
            json["jwt_token"].map((x) => JwtToken.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "firstname": firstname,
        "lastname": lastname,
        "type": type,
        "email": email,
        "username": username,
        "mobile": mobile,
        "address": address,
        "date_of_birth": dateOfBirth,
        "gender": gender,
        "city": city,
        "state": state,
        "country": country,
        "zip_code": zipCode,
        "photo": photo,
        "is_external": isExternal,
        "jwt_token": List<dynamic>.from(jwtToken.map((x) => x.toJson())),
      };
}

class JwtToken {
  JwtToken({
    required this.headers,
    required this.original,
    this.exception,
  });

  Headers headers;
  Original original;
  dynamic exception;

  factory JwtToken.fromJson(Map<String, dynamic> json) => JwtToken(
        headers: Headers.fromJson(json["headers"]),
        original: Original.fromJson(json["original"]),
        exception: json["exception"],
      );

  Map<String, dynamic> toJson() => {
        "headers": headers.toJson(),
        "original": original.toJson(),
        "exception": exception,
      };
}

class Headers {
  Headers();

  factory Headers.fromJson(Map<String, dynamic> json) => Headers();

  Map<String, dynamic> toJson() => {};
}

class Original {
  Original({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
  });

  String? accessToken;
  String? tokenType;
  int? expiresIn;

  factory Original.fromJson(Map<String, dynamic> json) => Original(
        accessToken: json["access_token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "token_type": tokenType,
        "expires_in": expiresIn,
      };
}
