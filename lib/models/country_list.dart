import 'country.dart';

class CountryList {
  final List<Country> countries;

  CountryList({
    required this.countries,
  });

  factory CountryList.fromJson(List<dynamic> parsedJson) {
    var countries = <Country>[];
    countries = parsedJson.map((i) => Country.fromJson(i)).toList();
    return CountryList(
      countries: countries,
    );
  }
}
