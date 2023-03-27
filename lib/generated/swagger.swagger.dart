// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:chopper/chopper.dart' as chopper;
import 'swagger.enums.swagger.dart' as enums;
export 'swagger.enums.swagger.dart';

part 'swagger.swagger.chopper.dart';
part 'swagger.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class Swagger extends ChopperService {
  static Swagger create({
    ChopperClient? client,
    Authenticator? authenticator,
    Uri? baseUrl,
    Iterable<dynamic>? interceptors,
  }) {
    if (client != null) {
      return _$Swagger(client);
    }

    final newClient = ChopperClient(
        services: [_$Swagger()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? Uri.parse('http://'));
    return _$Swagger(newClient);
  }

  ///
  ///@param skip
  ///@param limit
  ///@param brand
  ///@param ownerName
  ///@param phoneNumber
  Future<chopper.Response<List<AvtoDatabase>>> apiAvtoAvtosGet({
    int? skip,
    int? limit,
    String? brand,
    String? ownerName,
    String? phoneNumber,
  }) {
    generatedMapping.putIfAbsent(
        AvtoDatabase, () => AvtoDatabase.fromJsonFactory);

    return _apiAvtoAvtosGet(
        skip: skip,
        limit: limit,
        brand: brand,
        ownerName: ownerName,
        phoneNumber: phoneNumber);
  }

  ///
  ///@param skip
  ///@param limit
  ///@param brand
  ///@param ownerName
  ///@param phoneNumber
  @Get(path: '/api/avto/avtos')
  Future<chopper.Response<List<AvtoDatabase>>> _apiAvtoAvtosGet({
    @Query('skip') int? skip,
    @Query('limit') int? limit,
    @Query('brand') String? brand,
    @Query('ownerName') String? ownerName,
    @Query('phoneNumber') String? phoneNumber,
  });

  ///
  Future<chopper.Response> apiAvtoCreatePost({required AvtoDatabase? body}) {
    return _apiAvtoCreatePost(body: body);
  }

  ///
  @Post(
    path: '/api/avto/create',
    optionalBody: true,
  )
  Future<chopper.Response> _apiAvtoCreatePost(
      {@Body() required AvtoDatabase? body});

  ///
  Future<chopper.Response> apiAvtoDeleteDelete({required String? body}) {
    return _apiAvtoDeleteDelete(body: body);
  }

  ///
  @Delete(path: '/api/avto/delete')
  Future<chopper.Response> _apiAvtoDeleteDelete(
      {@Body() required String? body});

  ///
  Future<chopper.Response> apiAvtoUpdatePut({required AvtoDatabase? body}) {
    return _apiAvtoUpdatePut(body: body);
  }

  ///
  @Put(
    path: '/api/avto/update',
    optionalBody: true,
  )
  Future<chopper.Response> _apiAvtoUpdatePut(
      {@Body() required AvtoDatabase? body});

  ///
  ///@param skip
  ///@param limit
  ///@param phoneNumber
  ///@param name
  Future<chopper.Response<List<ClientDatabase>>> apiClientsClientsGet({
    int? skip,
    int? limit,
    String? phoneNumber,
    String? name,
  }) {
    generatedMapping.putIfAbsent(
        ClientDatabase, () => ClientDatabase.fromJsonFactory);

    return _apiClientsClientsGet(
        skip: skip, limit: limit, phoneNumber: phoneNumber, name: name);
  }

  ///
  ///@param skip
  ///@param limit
  ///@param phoneNumber
  ///@param name
  @Get(path: '/api/clients/clients')
  Future<chopper.Response<List<ClientDatabase>>> _apiClientsClientsGet({
    @Query('skip') int? skip,
    @Query('limit') int? limit,
    @Query('phoneNumber') String? phoneNumber,
    @Query('name') String? name,
  });

  ///
  Future<chopper.Response> apiClientsCreatePost(
      {required ClientDatabase? body}) {
    return _apiClientsCreatePost(body: body);
  }

  ///
  @Post(
    path: '/api/clients/create',
    optionalBody: true,
  )
  Future<chopper.Response> _apiClientsCreatePost(
      {@Body() required ClientDatabase? body});

  ///
  Future<chopper.Response> apiClientsDeleteDelete({required String? body}) {
    return _apiClientsDeleteDelete(body: body);
  }

  ///
  @Delete(path: '/api/clients/delete')
  Future<chopper.Response> _apiClientsDeleteDelete(
      {@Body() required String? body});

  ///
  Future<chopper.Response> apiClientsUpdatePut(
      {required ClientDatabase? body}) {
    return _apiClientsUpdatePut(body: body);
  }

  ///
  @Put(
    path: '/api/clients/update',
    optionalBody: true,
  )
  Future<chopper.Response> _apiClientsUpdatePut(
      {@Body() required ClientDatabase? body});

  ///
  ///@param skip
  ///@param limit
  ///@param brand
  ///@param ownerName
  ///@param phoneNumber
  Future<chopper.Response<List<RepairDatabase>>> apiRepairsRepairsGet({
    int? skip,
    int? limit,
    String? brand,
    String? ownerName,
    String? phoneNumber,
  }) {
    generatedMapping.putIfAbsent(
        RepairDatabase, () => RepairDatabase.fromJsonFactory);

    return _apiRepairsRepairsGet(
        skip: skip,
        limit: limit,
        brand: brand,
        ownerName: ownerName,
        phoneNumber: phoneNumber);
  }

  ///
  ///@param skip
  ///@param limit
  ///@param brand
  ///@param ownerName
  ///@param phoneNumber
  @Get(path: '/api/repairs/repairs')
  Future<chopper.Response<List<RepairDatabase>>> _apiRepairsRepairsGet({
    @Query('skip') int? skip,
    @Query('limit') int? limit,
    @Query('brand') String? brand,
    @Query('ownerName') String? ownerName,
    @Query('phoneNumber') String? phoneNumber,
  });

  ///
  Future<chopper.Response> apiRepairsCreatePost(
      {required RepairDatabase? body}) {
    return _apiRepairsCreatePost(body: body);
  }

  ///
  @Post(
    path: '/api/repairs/create',
    optionalBody: true,
  )
  Future<chopper.Response> _apiRepairsCreatePost(
      {@Body() required RepairDatabase? body});

  ///
  Future<chopper.Response> apiRepairsChangeStagePost(
      {required ChangeStage? body}) {
    return _apiRepairsChangeStagePost(body: body);
  }

  ///
  @Post(
    path: '/api/repairs/change-stage',
    optionalBody: true,
  )
  Future<chopper.Response> _apiRepairsChangeStagePost(
      {@Body() required ChangeStage? body});

  ///
  Future<chopper.Response> apiRepairsDonePost({required String? body}) {
    return _apiRepairsDonePost(body: body);
  }

  ///
  @Post(
    path: '/api/repairs/done',
    optionalBody: true,
  )
  Future<chopper.Response> _apiRepairsDonePost({@Body() required String? body});

  ///
  Future<chopper.Response<List<WeatherForecast>>> weatherForecastGet() {
    generatedMapping.putIfAbsent(
        WeatherForecast, () => WeatherForecast.fromJsonFactory);

    return _weatherForecastGet();
  }

  ///
  @Get(path: '/WeatherForecast')
  Future<chopper.Response<List<WeatherForecast>>> _weatherForecastGet();
}

@JsonSerializable(explicitToJson: true)
class AvtoDatabase {
  AvtoDatabase({
    this.id,
    this.brand,
    this.owner,
  });

  factory AvtoDatabase.fromJson(Map<String, dynamic> json) =>
      _$AvtoDatabaseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'brand')
  final String? brand;
  @JsonKey(name: 'owner')
  final ClientDatabase? owner;
  static const fromJsonFactory = _$AvtoDatabaseFromJson;
  static const toJsonFactory = _$AvtoDatabaseToJson;
  Map<String, dynamic> toJson() => _$AvtoDatabaseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AvtoDatabase &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.brand, brand) ||
                const DeepCollectionEquality().equals(other.brand, brand)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(brand) ^
      const DeepCollectionEquality().hash(owner) ^
      runtimeType.hashCode;
}

extension $AvtoDatabaseExtension on AvtoDatabase {
  AvtoDatabase copyWith({String? id, String? brand, ClientDatabase? owner}) {
    return AvtoDatabase(
        id: id ?? this.id,
        brand: brand ?? this.brand,
        owner: owner ?? this.owner);
  }

  AvtoDatabase copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? brand,
      Wrapped<ClientDatabase?>? owner}) {
    return AvtoDatabase(
        id: (id != null ? id.value : this.id),
        brand: (brand != null ? brand.value : this.brand),
        owner: (owner != null ? owner.value : this.owner));
  }
}

@JsonSerializable(explicitToJson: true)
class ChangeStage {
  ChangeStage({
    this.id,
    this.stageDelta,
  });

  factory ChangeStage.fromJson(Map<String, dynamic> json) =>
      _$ChangeStageFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'stageDelta')
  final int? stageDelta;
  static const fromJsonFactory = _$ChangeStageFromJson;
  static const toJsonFactory = _$ChangeStageToJson;
  Map<String, dynamic> toJson() => _$ChangeStageToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeStage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.stageDelta, stageDelta) ||
                const DeepCollectionEquality()
                    .equals(other.stageDelta, stageDelta)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(stageDelta) ^
      runtimeType.hashCode;
}

extension $ChangeStageExtension on ChangeStage {
  ChangeStage copyWith({String? id, int? stageDelta}) {
    return ChangeStage(
        id: id ?? this.id, stageDelta: stageDelta ?? this.stageDelta);
  }

  ChangeStage copyWithWrapped(
      {Wrapped<String?>? id, Wrapped<int?>? stageDelta}) {
    return ChangeStage(
        id: (id != null ? id.value : this.id),
        stageDelta: (stageDelta != null ? stageDelta.value : this.stageDelta));
  }
}

@JsonSerializable(explicitToJson: true)
class ClientDatabase {
  ClientDatabase({
    this.id,
    this.name,
    this.phoneNumber,
    this.avatar,
  });

  factory ClientDatabase.fromJson(Map<String, dynamic> json) =>
      _$ClientDatabaseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;
  @JsonKey(name: 'avatar')
  final String? avatar;
  static const fromJsonFactory = _$ClientDatabaseFromJson;
  static const toJsonFactory = _$ClientDatabaseToJson;
  Map<String, dynamic> toJson() => _$ClientDatabaseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ClientDatabase &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(avatar) ^
      runtimeType.hashCode;
}

extension $ClientDatabaseExtension on ClientDatabase {
  ClientDatabase copyWith(
      {String? id, String? name, String? phoneNumber, String? avatar}) {
    return ClientDatabase(
        id: id ?? this.id,
        name: name ?? this.name,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        avatar: avatar ?? this.avatar);
  }

  ClientDatabase copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? name,
      Wrapped<String?>? phoneNumber,
      Wrapped<String?>? avatar}) {
    return ClientDatabase(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        phoneNumber:
            (phoneNumber != null ? phoneNumber.value : this.phoneNumber),
        avatar: (avatar != null ? avatar.value : this.avatar));
  }
}

@JsonSerializable(explicitToJson: true)
class DateOnly {
  DateOnly({
    this.year,
    this.month,
    this.day,
    this.dayOfWeek,
    this.dayOfYear,
    this.dayNumber,
  });

  factory DateOnly.fromJson(Map<String, dynamic> json) =>
      _$DateOnlyFromJson(json);

  @JsonKey(name: 'year')
  final int? year;
  @JsonKey(name: 'month')
  final int? month;
  @JsonKey(name: 'day')
  final int? day;
  @JsonKey(
    name: 'dayOfWeek',
    toJson: dayOfWeekToJson,
    fromJson: dayOfWeekFromJson,
  )
  final enums.DayOfWeek? dayOfWeek;
  @JsonKey(name: 'dayOfYear')
  final int? dayOfYear;
  @JsonKey(name: 'dayNumber')
  final int? dayNumber;
  static const fromJsonFactory = _$DateOnlyFromJson;
  static const toJsonFactory = _$DateOnlyToJson;
  Map<String, dynamic> toJson() => _$DateOnlyToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateOnly &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfWeek, dayOfWeek)) &&
            (identical(other.dayOfYear, dayOfYear) ||
                const DeepCollectionEquality()
                    .equals(other.dayOfYear, dayOfYear)) &&
            (identical(other.dayNumber, dayNumber) ||
                const DeepCollectionEquality()
                    .equals(other.dayNumber, dayNumber)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(dayOfWeek) ^
      const DeepCollectionEquality().hash(dayOfYear) ^
      const DeepCollectionEquality().hash(dayNumber) ^
      runtimeType.hashCode;
}

extension $DateOnlyExtension on DateOnly {
  DateOnly copyWith(
      {int? year,
      int? month,
      int? day,
      enums.DayOfWeek? dayOfWeek,
      int? dayOfYear,
      int? dayNumber}) {
    return DateOnly(
        year: year ?? this.year,
        month: month ?? this.month,
        day: day ?? this.day,
        dayOfWeek: dayOfWeek ?? this.dayOfWeek,
        dayOfYear: dayOfYear ?? this.dayOfYear,
        dayNumber: dayNumber ?? this.dayNumber);
  }

  DateOnly copyWithWrapped(
      {Wrapped<int?>? year,
      Wrapped<int?>? month,
      Wrapped<int?>? day,
      Wrapped<enums.DayOfWeek?>? dayOfWeek,
      Wrapped<int?>? dayOfYear,
      Wrapped<int?>? dayNumber}) {
    return DateOnly(
        year: (year != null ? year.value : this.year),
        month: (month != null ? month.value : this.month),
        day: (day != null ? day.value : this.day),
        dayOfWeek: (dayOfWeek != null ? dayOfWeek.value : this.dayOfWeek),
        dayOfYear: (dayOfYear != null ? dayOfYear.value : this.dayOfYear),
        dayNumber: (dayNumber != null ? dayNumber.value : this.dayNumber));
  }
}

@JsonSerializable(explicitToJson: true)
class RepairDatabase {
  RepairDatabase({
    this.id,
    this.avto,
    this.cost,
    this.startDate,
    this.endDate,
    this.stage,
    this.stages,
  });

  factory RepairDatabase.fromJson(Map<String, dynamic> json) =>
      _$RepairDatabaseFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'avto')
  final AvtoDatabase? avto;
  @JsonKey(name: 'cost')
  final double? cost;
  @JsonKey(name: 'startDate')
  final DateTime? startDate;
  @JsonKey(name: 'endDate')
  final DateTime? endDate;
  @JsonKey(name: 'stage')
  final int? stage;
  @JsonKey(name: 'stages', defaultValue: <RepairStageDatabase>[])
  final List<RepairStageDatabase>? stages;
  static const fromJsonFactory = _$RepairDatabaseFromJson;
  static const toJsonFactory = _$RepairDatabaseToJson;
  Map<String, dynamic> toJson() => _$RepairDatabaseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RepairDatabase &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.avto, avto) ||
                const DeepCollectionEquality().equals(other.avto, avto)) &&
            (identical(other.cost, cost) ||
                const DeepCollectionEquality().equals(other.cost, cost)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.stage, stage) ||
                const DeepCollectionEquality().equals(other.stage, stage)) &&
            (identical(other.stages, stages) ||
                const DeepCollectionEquality().equals(other.stages, stages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(avto) ^
      const DeepCollectionEquality().hash(cost) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(stage) ^
      const DeepCollectionEquality().hash(stages) ^
      runtimeType.hashCode;
}

extension $RepairDatabaseExtension on RepairDatabase {
  RepairDatabase copyWith(
      {String? id,
      AvtoDatabase? avto,
      double? cost,
      DateTime? startDate,
      DateTime? endDate,
      int? stage,
      List<RepairStageDatabase>? stages}) {
    return RepairDatabase(
        id: id ?? this.id,
        avto: avto ?? this.avto,
        cost: cost ?? this.cost,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        stage: stage ?? this.stage,
        stages: stages ?? this.stages);
  }

  RepairDatabase copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<AvtoDatabase?>? avto,
      Wrapped<double?>? cost,
      Wrapped<DateTime?>? startDate,
      Wrapped<DateTime?>? endDate,
      Wrapped<int?>? stage,
      Wrapped<List<RepairStageDatabase>?>? stages}) {
    return RepairDatabase(
        id: (id != null ? id.value : this.id),
        avto: (avto != null ? avto.value : this.avto),
        cost: (cost != null ? cost.value : this.cost),
        startDate: (startDate != null ? startDate.value : this.startDate),
        endDate: (endDate != null ? endDate.value : this.endDate),
        stage: (stage != null ? stage.value : this.stage),
        stages: (stages != null ? stages.value : this.stages));
  }
}

@JsonSerializable(explicitToJson: true)
class RepairStageDatabase {
  RepairStageDatabase({
    this.name,
  });

  factory RepairStageDatabase.fromJson(Map<String, dynamic> json) =>
      _$RepairStageDatabaseFromJson(json);

  @JsonKey(name: 'name')
  final String? name;
  static const fromJsonFactory = _$RepairStageDatabaseFromJson;
  static const toJsonFactory = _$RepairStageDatabaseToJson;
  Map<String, dynamic> toJson() => _$RepairStageDatabaseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RepairStageDatabase &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^ runtimeType.hashCode;
}

extension $RepairStageDatabaseExtension on RepairStageDatabase {
  RepairStageDatabase copyWith({String? name}) {
    return RepairStageDatabase(name: name ?? this.name);
  }

  RepairStageDatabase copyWithWrapped({Wrapped<String?>? name}) {
    return RepairStageDatabase(name: (name != null ? name.value : this.name));
  }
}

@JsonSerializable(explicitToJson: true)
class WeatherForecast {
  WeatherForecast({
    this.date,
    this.temperatureC,
    this.temperatureF,
    this.summary,
  });

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);

  @JsonKey(name: 'date')
  final DateOnly? date;
  @JsonKey(name: 'temperatureC')
  final int? temperatureC;
  @JsonKey(name: 'temperatureF')
  final int? temperatureF;
  @JsonKey(name: 'summary')
  final String? summary;
  static const fromJsonFactory = _$WeatherForecastFromJson;
  static const toJsonFactory = _$WeatherForecastToJson;
  Map<String, dynamic> toJson() => _$WeatherForecastToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WeatherForecast &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.temperatureC, temperatureC) ||
                const DeepCollectionEquality()
                    .equals(other.temperatureC, temperatureC)) &&
            (identical(other.temperatureF, temperatureF) ||
                const DeepCollectionEquality()
                    .equals(other.temperatureF, temperatureF)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality().equals(other.summary, summary)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(temperatureC) ^
      const DeepCollectionEquality().hash(temperatureF) ^
      const DeepCollectionEquality().hash(summary) ^
      runtimeType.hashCode;
}

extension $WeatherForecastExtension on WeatherForecast {
  WeatherForecast copyWith(
      {DateOnly? date, int? temperatureC, int? temperatureF, String? summary}) {
    return WeatherForecast(
        date: date ?? this.date,
        temperatureC: temperatureC ?? this.temperatureC,
        temperatureF: temperatureF ?? this.temperatureF,
        summary: summary ?? this.summary);
  }

  WeatherForecast copyWithWrapped(
      {Wrapped<DateOnly?>? date,
      Wrapped<int?>? temperatureC,
      Wrapped<int?>? temperatureF,
      Wrapped<String?>? summary}) {
    return WeatherForecast(
        date: (date != null ? date.value : this.date),
        temperatureC:
            (temperatureC != null ? temperatureC.value : this.temperatureC),
        temperatureF:
            (temperatureF != null ? temperatureF.value : this.temperatureF),
        summary: (summary != null ? summary.value : this.summary));
  }
}

int? dayOfWeekToJson(enums.DayOfWeek? dayOfWeek) {
  return dayOfWeek?.value;
}

enums.DayOfWeek dayOfWeekFromJson(
  Object? dayOfWeek, [
  enums.DayOfWeek? defaultValue,
]) {
  return enums.DayOfWeek.values.firstWhereOrNull((e) => e.value == dayOfWeek) ??
      defaultValue ??
      enums.DayOfWeek.swaggerGeneratedUnknown;
}

List<int> dayOfWeekListToJson(List<enums.DayOfWeek>? dayOfWeek) {
  if (dayOfWeek == null) {
    return [];
  }

  return dayOfWeek.map((e) => e.value!).toList();
}

List<enums.DayOfWeek> dayOfWeekListFromJson(
  List? dayOfWeek, [
  List<enums.DayOfWeek>? defaultValue,
]) {
  if (dayOfWeek == null) {
    return defaultValue ?? [];
  }

  return dayOfWeek.map((e) => dayOfWeekFromJson(e.toString())).toList();
}

List<enums.DayOfWeek>? dayOfWeekNullableListFromJson(
  List? dayOfWeek, [
  List<enums.DayOfWeek>? defaultValue,
]) {
  if (dayOfWeek == null) {
    return defaultValue;
  }

  return dayOfWeek.map((e) => dayOfWeekFromJson(e.toString())).toList();
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
      chopper.Response response) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
