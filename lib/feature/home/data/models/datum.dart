import 'dart:convert';

import 'coin_info.dart';

import 'raw.dart';

class MainData {
  CoinInfo? coinInfo;
  Raw? raw;
  String? price;
  MainData({this.coinInfo, this.raw, this.price});

  factory MainData.fromMap(Map<String, dynamic> data) {
    return MainData(
      coinInfo: data['CoinInfo'] == null
          ? null
          : CoinInfo.fromMap(data['CoinInfo'] as Map<String, dynamic>),
      raw: data['RAW'] == null
          ? null
          : Raw.fromMap(data['RAW'] as Map<String, dynamic>),
      price: data['DISPLAY']['USD']['PRICE'] == null
          ? null
          : (data['DISPLAY']['USD']['PRICE'] as String).replaceAll(' ', ''),
    );
  }

  Map<String, dynamic> toMap() => {
        'CoinInfo': coinInfo?.toMap(),
        'RAW': raw?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MainData].
  factory MainData.fromJson(String data) {
    return MainData.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MainData] to a JSON string.
  String toJson() => json.encode(toMap());
}
