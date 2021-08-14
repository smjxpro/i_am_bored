// To parse this JSON data, do
//
//     final activityResponse = activityResponseFromMap(jsonString);

import 'dart:convert';

class ActivityResponse {
  ActivityResponse({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  String activity;
  String type;
  int participants;
  num price;
  String link;
  String key;
  double accessibility;

  ActivityResponse copyWith({
    String? activity,
    String? type,
    int? participants,
    num? price,
    String? link,
    String? key,
    double? accessibility,
  }) =>
      ActivityResponse(
        activity: activity ?? this.activity,
        type: type ?? this.type,
        participants: participants ?? this.participants,
        price: price ?? this.price,
        link: link ?? this.link,
        key: key ?? this.key,
        accessibility: accessibility ?? this.accessibility,
      );

  factory ActivityResponse.fromJson(String str) =>
      ActivityResponse.fromMap(json.decode(str));

  static ActivityResponse fromDecodedJson(dynamic decodedJson) =>
      ActivityResponse.fromMap(decodedJson);

  String toJson() => json.encode(toMap());

  factory ActivityResponse.fromMap(Map<String, dynamic> json) =>
      ActivityResponse(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
      };
}
