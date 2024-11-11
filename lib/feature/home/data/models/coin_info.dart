import 'dart:convert';

import 'package:coin_rate/core/config/constans.dart';

class CoinInfo {
  String? id;
  String? name;
  String? fullName;
  String? internal;
  String? imageUrl;
  String? url;
  String? algorithm;
  String? proofType;

  num? netHashesPerSecond;
  num? blockNumber;
  num? blockTime;
  num? blockReward;
  String? assetLaunchDate;
  num? maxSupply;
  num? type;
  String? documentType;

  CoinInfo({
    this.id,
    this.name,
    this.fullName,
    this.internal,
    this.imageUrl,
    this.url,
    this.algorithm,
    this.proofType,
    this.netHashesPerSecond,
    this.blockNumber,
    this.blockTime,
    this.blockReward,
    this.assetLaunchDate,
    this.maxSupply,
    this.type,
    this.documentType,
  });

  factory CoinInfo.fromMap(Map<String, dynamic> data) => CoinInfo(
        id: data['Id'] as String?,
        name: data['Name'] as String?,
        fullName: data['FullName'] as String?,
        internal: data['Internal'] as String?,
        imageUrl: ApiUrlConstants.imageBaseUrl + data['ImageUrl'] as String?,
        url: data['Url'] as String?,
        algorithm: data['Algorithm'] as String?,
        proofType: data['ProofType'] as String?,
        netHashesPerSecond: data['NetHashesPerSecond'] as num?,
        blockNumber: data['BlockNumber'] as num?,
        blockTime: data['BlockTime'] as num?,
        blockReward: (data['BlockReward'] as num?)?.toDouble(),
        assetLaunchDate: data['AssetLaunchDate'] as String?,
        maxSupply: (data['MaxSupply'] as num?)?.toDouble(),
        type: data['Type'] as num?,
        documentType: data['DocumentType'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'Id': id,
        'Name': name,
        'FullName': fullName,
        'Internal': internal,
        'ImageUrl': imageUrl,
        'Url': url,
        'Algorithm': algorithm,
        'ProofType': proofType,
        'NetHashesPerSecond': netHashesPerSecond,
        'BlockNumber': blockNumber,
        'BlockTime': blockTime,
        'BlockReward': blockReward,
        'AssetLaunchDate': assetLaunchDate,
        'MaxSupply': maxSupply,
        'Type': type,
        'DocumentType': documentType,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CoinInfo].
  factory CoinInfo.fromJson(String data) {
    return CoinInfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CoinInfo] to a JSON string.
  String toJson() => json.encode(toMap());
}
