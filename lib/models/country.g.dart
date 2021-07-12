// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) {
  return Country(
    name: json['name'] as String?,
    officialName: json['officialName'] as String?,
    nativeName: json['nativeName'] as String?,
    alpha2Code: json['alpha2Code'] as String,
    alpha3Code: json['alpha3Code'] as String,
    numericCode: json['numericCode'] as String?,
    independent: json['independent'] as bool?,
    unMember: json['unMember'] as bool?,
    topLevelDomain: (json['topLevelDomain'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    callingCodes: (json['callingCodes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    capital: json['capital'] as String?,
    region: json['region'] as String?,
    subRegion: json['subRegion'] as String?,
    area: (json['area'] as num?)?.toDouble(),
    flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    flagIcon: json['flagIcon'] as String?,
    olympicCode: json['olympicCode'] as String?,
    coordinates: (json['coordinates'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList(),
    translations: (json['translations'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    altSpellings: (json['altSpellings'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    landLocked: json['landLocked'] as bool?,
    borders:
        (json['borders'] as List<dynamic>?)?.map((e) => e as String).toList(),
    demonym: json['demonym'] as String?,
  );
}

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'officialName': instance.officialName,
      'nativeName': instance.nativeName,
      'translations': instance.translations,
      'demonym': instance.demonym,
      'altSpellings': instance.altSpellings,
      'alpha2Code': instance.alpha2Code,
      'alpha3Code': instance.alpha3Code,
      'numericCode': instance.numericCode,
      'olympicCode': instance.olympicCode,
      'independent': instance.independent,
      'unMember': instance.unMember,
      'landLocked': instance.landLocked,
      'topLevelDomain': instance.topLevelDomain,
      'capital': instance.capital,
      'region': instance.region,
      'subRegion': instance.subRegion,
      'borders': instance.borders,
      'area': instance.area,
      'flags': instance.flags,
      'flagIcon': instance.flagIcon,
      'callingCodes': instance.callingCodes,
      'coordinates': instance.coordinates,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
