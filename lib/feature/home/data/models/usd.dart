import 'dart:convert';

class Usd {
  String? type;
  String? market;
  String? fromsymbol;
  String? tosymbol;
  String? flags;
  String? lastmarket;
  num? median;
  String? toptiervolume24Hour;
  String? toptiervolume24Hourto;
  String? lasttradeid;
  num? price;
  num? lastupdate;
  num? lastvolume;
  num? lastvolumeto;
  num? volumehour;
  num? volumehourto;
  num? openhour;
  num? highhour;
  num? lowhour;
  num? volumeday;
  num? volumedayto;
  num? openday;
  num? highday;
  num? lowday;
  num? volume24Hour;
  num? volume24Hourto;
  num? open24Hour;
  num? high24Hour;
  num? low24Hour;
  num? change24Hour;
  num? changepct24Hour;
  num? changeday;
  num? changepctday;
  num? changehour;
  num? changepcthour;
  String? conversiontype;
  String? conversionsymbol;
  num? conversionlastupdate;
  num? supply;
  num? mktcap;
  num? mktcappenalty;
  num? circulatingsupply;
  num? circulatingsupplymktcap;
  num? totalvolume24H;
  num? totalvolume24Hto;
  num? totaltoptiervolume24H;
  num? totaltoptiervolume24Hto;
  String? imageurl;

  Usd({
    this.type,
    this.market,
    this.fromsymbol,
    this.tosymbol,
    this.flags,
    this.lastmarket,
    this.median,
    this.toptiervolume24Hour,
    this.toptiervolume24Hourto,
    this.lasttradeid,
    this.price,
    this.lastupdate,
    this.lastvolume,
    this.lastvolumeto,
    this.volumehour,
    this.volumehourto,
    this.openhour,
    this.highhour,
    this.lowhour,
    this.volumeday,
    this.volumedayto,
    this.openday,
    this.highday,
    this.lowday,
    this.volume24Hour,
    this.volume24Hourto,
    this.open24Hour,
    this.high24Hour,
    this.low24Hour,
    this.change24Hour,
    this.changepct24Hour,
    this.changeday,
    this.changepctday,
    this.changehour,
    this.changepcthour,
    this.conversiontype,
    this.conversionsymbol,
    this.conversionlastupdate,
    this.supply,
    this.mktcap,
    this.mktcappenalty,
    this.circulatingsupply,
    this.circulatingsupplymktcap,
    this.totalvolume24H,
    this.totalvolume24Hto,
    this.totaltoptiervolume24H,
    this.totaltoptiervolume24Hto,
    this.imageurl,
  });

  factory Usd.fromMap(Map<String, dynamic> data) => Usd(
        // type: data['TYPE'] as String?,
        // market: data['MARKET'] as String?,
        // fromsymbol: data['FROMSYMBOL'] as String?,
        // tosymbol: data['TOSYMBOL'] as String?,
        // flags: data['FLAGS'] as String?,
        // lastmarket: data['LASTMARKET'] as String?,
        // median: (data['MEDIAN'] as num?)?.toDouble(),
        // toptiervolume24Hour: (data['TOPTIERVOLUME24HOUR'] as String?),
        // toptiervolume24Hourto: (data['TOPTIERVOLUME24HOURTO'] as String?),
        // lasttradeid: data['LASTTRADEID'] as String?,
        price: (data['PRICE'] as num?)?.toDouble(),
        // lastupdate: data['LASTUPDATE'] as num?,
        // lastvolume: (data['LASTVOLUME'] as num?)?.toDouble(),
        // lastvolumeto: (data['LASTVOLUMETO'] as num?)?.toDouble(),
        // volumehour: (data['VOLUMEHOUR'] as num?)?.toDouble(),
        // volumehourto: (data['VOLUMEHOURTO'] as num?)?.toDouble(),
        // openhour: (data['OPENHOUR'] as num?)?.toDouble(),
        // highhour: (data['HIGHHOUR'] as num?)?.toDouble(),
        // lowhour: (data['LOWHOUR'] as num?)?.toDouble(),
        // volumeday: (data['VOLUMEDAY'] as num?)?.toDouble(),
        // volumedayto: (data['VOLUMEDAYTO'] as num?)?.toDouble(),
        // openday: (data['OPENDAY'] as num?)?.toDouble(),
        // highday: (data['HIGHDAY'] as num?)?.toDouble(),
        // lowday: (data['LOWDAY'] as num?)?.toDouble(),
        // volume24Hour: (data['VOLUME24HOUR'] as num?)?.toDouble(),
        // volume24Hourto: (data['VOLUME24HOURTO'] as num?)?.toDouble(),
        // open24Hour: (data['OPEN24HOUR'] as num?)?.toDouble(),
        // high24Hour: (data['HIGH24HOUR'] as num?)?.toDouble(),
        // low24Hour: (data['LOW24HOUR'] as num?)?.toDouble(),
        change24Hour: (data['CHANGE24HOUR'] as num?)?.toDouble(),
        changepct24Hour: (data['CHANGEPCT24HOUR'] as num?)?.toDouble(),
        // changeday: (data['CHANGEDAY'] as num?)?.toDouble(),
        // changepctday: (data['CHANGEPCTDAY'] as num?)?.toDouble(),
        // changehour: (data['CHANGEHOUR'] as num?)?.toDouble(),
        // changepcthour: (data['CHANGEPCTHOUR'] as num?)?.toDouble(),
        // conversiontype: data['CONVERSIONTYPE'] as String?,
        // conversionsymbol: data['CONVERSIONSYMBOL'] as String?,
        // conversionlastupdate: data['CONVERSIONLASTUPDATE'] as num?,
        // supply: data['SUPPLY'] as num?,
        // mktcap: (data['MKTCAP'] as num?)?.toDouble(),
        // mktcappenalty: data['MKTCAPPENALTY'] as num?,
        // circulatingsupply: data['CIRCULATINGSUPPLY'] as num?,
        // circulatingsupplymktcap:
        //     (data['CIRCULATINGSUPPLYMKTCAP'] as num?)?.toDouble(),
        // totalvolume24H: (data['TOTALVOLUME24H'] as num?)?.toDouble(),
        // totalvolume24Hto: (data['TOTALVOLUME24HTO'] as num?)?.toDouble(),
        // totaltoptiervolume24H:
        //     (data['TOTALTOPTIERVOLUME24H'] as num?)?.toDouble(),
        // totaltoptiervolume24Hto:
        //     (data['TOTALTOPTIERVOLUME24HTO'] as num?)?.toDouble(),
        imageurl: data['IMAGEURL'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'TYPE': type,
        'MARKET': market,
        'FROMSYMBOL': fromsymbol,
        'TOSYMBOL': tosymbol,
        'FLAGS': flags,
        'LASTMARKET': lastmarket,
        'MEDIAN': median,
        'TOPTIERVOLUME24HOUR': toptiervolume24Hour,
        'TOPTIERVOLUME24HOURTO': toptiervolume24Hourto,
        'LASTTRADEID': lasttradeid,
        'PRICE': price,
        'LASTUPDATE': lastupdate,
        'LASTVOLUME': lastvolume,
        'LASTVOLUMETO': lastvolumeto,
        'VOLUMEHOUR': volumehour,
        'VOLUMEHOURTO': volumehourto,
        'OPENHOUR': openhour,
        'HIGHHOUR': highhour,
        'LOWHOUR': lowhour,
        'VOLUMEDAY': volumeday,
        'VOLUMEDAYTO': volumedayto,
        'OPENDAY': openday,
        'HIGHDAY': highday,
        'LOWDAY': lowday,
        'VOLUME24HOUR': volume24Hour,
        'VOLUME24HOURTO': volume24Hourto,
        'OPEN24HOUR': open24Hour,
        'HIGH24HOUR': high24Hour,
        'LOW24HOUR': low24Hour,
        'CHANGE24HOUR': change24Hour,
        'CHANGEPCT24HOUR': changepct24Hour,
        'CHANGEDAY': changeday,
        'CHANGEPCTDAY': changepctday,
        'CHANGEHOUR': changehour,
        'CHANGEPCTHOUR': changepcthour,
        'CONVERSIONTYPE': conversiontype,
        'CONVERSIONSYMBOL': conversionsymbol,
        'CONVERSIONLASTUPDATE': conversionlastupdate,
        'SUPPLY': supply,
        'MKTCAP': mktcap,
        'MKTCAPPENALTY': mktcappenalty,
        'CIRCULATINGSUPPLY': circulatingsupply,
        'CIRCULATINGSUPPLYMKTCAP': circulatingsupplymktcap,
        'TOTALVOLUME24H': totalvolume24H,
        'TOTALVOLUME24HTO': totalvolume24Hto,
        'TOTALTOPTIERVOLUME24H': totaltoptiervolume24H,
        'TOTALTOPTIERVOLUME24HTO': totaltoptiervolume24Hto,
        'IMAGEURL': imageurl,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Usd].
  factory Usd.fromJson(String data) {
    return Usd.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Usd] to a JSON string.
  String toJson() => json.encode(toMap());
}
