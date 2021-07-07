import 'assets/countries_data.dart';
import 'models/country.dart';
import 'models/country_list.dart';
import 'models/timezone.dart';

class Countries {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.

  late CountryList _countriesList;

  Countries._() {
    _countriesList = CountryList.fromJson(countriesData);
  }

  factory Countries() {
    return Countries._();
  }

  List<Country> get all => _countriesList.countries;

  Country byName(String name) {
    Country country = _countriesList.countries
        .where(
          (c) => c.name == name,
        )
        .first;
    return country;
  }

  Country byCode(String code) {
    Country country = _countriesList.countries
        .where(
          (c) => c.alpha2Code == code,
        )
        .first;
    return country;
  }

  Country byAlpha3Code(String code) {
    Country country = _countriesList.countries
        .where(
          (c) => c.alpha3Code == code,
        )
        .first;
    return country;
  }

  Country byNumericCode(String code) {
    Country country = _countriesList.countries
        .where(
          (c) => c.numericCode == code,
        )
        .first;
    return country;
  }

  Country byCallingCode(String code) {
    Country country = _countriesList.countries
        .where(
          (c) {
            return c.callingCodes?.contains(code) ?? false;
          },
        )
        .toList()
        .first;
    return country;
  }

  Country byCapital(String capital) {
    Country country = _countriesList.countries.where(
      (c) {
        return c.capital?.contains(capital) ?? false;
      },
    ).first;
    return country;
  }

  Country byFlag(String flag) {
    Country country = _countriesList.countries
        .where(
          (c) => c.flagIcon == flag,
        )
        .first;
    return country;
  }

  List<Country> unMembers() {
    List<Country> countries = _countriesList.countries
        .where(
          (c) => c.unMember == true,
        )
        .toList();
    return countries;
  }

  List<Country> independent() {
    List<Country> countries = _countriesList.countries
        .where(
          (c) => c.independent == true,
        )
        .toList();
    return countries;
  }

  List<Country> byRegion(String region) {
    List<Country> countries = _countriesList.countries
        .where(
          (c) => c.region?.contains(region) ?? false,
        )
        .toList();
    return countries;
  }

  Country byArea(double area) {
    Country countries =
        _countriesList.countries.where((c) => c.area == area).first;
    return countries;
  }

  List<Country> areaBiggerThan(double area) {
    List<Country> countries = _countriesList.countries
        .where((c) => c.area != null && c.area! > area)
        .toList();
    return countries;
  }

  CountryList areaSmallerThan(double area) {
    List<Country> countries = _countriesList.countries
        .where((c) => c.area != null && c.area! < area)
        .toList();
    return CountryList(countries: countries);
  }

  CountryList byTimeZone(TimeZone timeZone) {
    List<Country> countries = _countriesList.countries.where(
      (c) {
        if (c.timeZones == null) return false;
        return c.timeZones!.timeZones == null
            ? false
            : c.timeZones!.timeZones!.contains(timeZone);
      },
    ).toList();
    return CountryList(countries: countries);
  }
}
