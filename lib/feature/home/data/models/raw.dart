import 'dart:convert';

import 'usd.dart';

class Raw {
  Usd? usd;

  Raw({this.usd});

  factory Raw.fromMap(Map<String, dynamic> data) => Raw(
        usd: data['USD'] == null
            ? null
            : Usd.fromMap(data['USD'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'USD': usd?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Raw].
  factory Raw.fromJson(String data) {
    return Raw.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Raw] to a JSON string.
  String toJson() => json.encode(toMap());
}
