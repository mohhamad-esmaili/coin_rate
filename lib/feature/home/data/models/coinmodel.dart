import 'dart:convert';

import 'datum.dart';

class Coinmodel {
  String? message;
  List<MainData>? data;

  Coinmodel({
    this.message,
    this.data,
  });

  factory Coinmodel.fromMap(Map<String, dynamic> data) => Coinmodel(
        message: data['Message'] as String?,
        data: (data['Data'] as List<dynamic>?)
            ?.map((e) => MainData.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'Message': message,
        'Data': data?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Coinmodel].
  factory Coinmodel.fromJson(Map<String, dynamic> data) {
    return Coinmodel.fromMap(data);
  }

  /// `dart:convert`
  ///
  /// Converts [Coinmodel] to a JSON string.
  String toJson() => json.encode(toMap());
}
