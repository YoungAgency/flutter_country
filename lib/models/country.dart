import 'package:json_annotation/json_annotation.dart';

import 'currency_list.dart';
import 'timezone_list.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  final String? name;
  final String? officialName;
  final String? nativeName;
  final Map<String, String>? translations;
  final String? demonym;
  final List<String>? altSpellings;
  final String alpha2Code;
  final String alpha3Code;
  final String? numericCode;
  final String? olympicCode;
  final bool? independent;
  final bool? unMember;
  final bool? landLocked;
  final List<String>? topLevelDomain;
  final String? capital;
  final String? region;
  final String? subRegion;
  @JsonKey(ignore: true)
  final CurrencyList? currencies;
  final List<String>? borders;
  final double? area;
  final List<String>? flags;
  final String? flagIcon;
  final List<String>? callingCodes;
  final List<double>? coordinates;
  final double? latitude;
  final double? longitude;
  @JsonKey(ignore: true)
  final TimeZoneList? timeZones;

  Country({
    this.name,
    this.officialName,
    this.nativeName,
    required this.alpha2Code,
    required this.alpha3Code,
    this.numericCode,
    this.independent,
    this.unMember,
    this.topLevelDomain,
    this.callingCodes,
    this.currencies,
    this.capital,
    this.region,
    this.subRegion,
    this.area,
    this.flags,
    this.flagIcon,
    this.olympicCode,
    this.coordinates,
    this.translations,
    this.latitude,
    this.longitude,
    this.altSpellings,
    this.landLocked,
    this.borders,
    this.demonym,
    this.timeZones,
  });

  static Country fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);

  Map<String, dynamic> toJson() => _$CountryToJson(this);

  String translate(String code) {
    if (translations == null) {
      return "";
    }
    return translations!.containsKey(code) ? translations![code]! : '';
  }

  String get flagPng => flags != null && flags!.length > 1 ? flags!.last : "";
}
