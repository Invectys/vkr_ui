// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvtoDatabase _$AvtoDatabaseFromJson(Map<String, dynamic> json) => AvtoDatabase(
      id: json['id'] as String?,
      brand: json['brand'] as String?,
      owner: json['owner'] == null
          ? null
          : ClientDatabase.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AvtoDatabaseToJson(AvtoDatabase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'owner': instance.owner?.toJson(),
    };

ChangeStage _$ChangeStageFromJson(Map<String, dynamic> json) => ChangeStage(
      id: json['id'] as String?,
      stageDelta: json['stageDelta'] as int?,
    );

Map<String, dynamic> _$ChangeStageToJson(ChangeStage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stageDelta': instance.stageDelta,
    };

ClientDatabase _$ClientDatabaseFromJson(Map<String, dynamic> json) =>
    ClientDatabase(
      id: json['id'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$ClientDatabaseToJson(ClientDatabase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'avatar': instance.avatar,
    };

DateOnly _$DateOnlyFromJson(Map<String, dynamic> json) => DateOnly(
      year: json['year'] as int?,
      month: json['month'] as int?,
      day: json['day'] as int?,
      dayOfWeek: dayOfWeekFromJson(json['dayOfWeek']),
      dayOfYear: json['dayOfYear'] as int?,
      dayNumber: json['dayNumber'] as int?,
    );

Map<String, dynamic> _$DateOnlyToJson(DateOnly instance) => <String, dynamic>{
      'year': instance.year,
      'month': instance.month,
      'day': instance.day,
      'dayOfWeek': dayOfWeekToJson(instance.dayOfWeek),
      'dayOfYear': instance.dayOfYear,
      'dayNumber': instance.dayNumber,
    };

RepairDatabase _$RepairDatabaseFromJson(Map<String, dynamic> json) =>
    RepairDatabase(
      id: json['id'] as String?,
      avto: json['avto'] == null
          ? null
          : AvtoDatabase.fromJson(json['avto'] as Map<String, dynamic>),
      cost: (json['cost'] as num?)?.toDouble(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      stage: json['stage'] as int?,
      stages: (json['stages'] as List<dynamic>?)
              ?.map((e) =>
                  RepairStageDatabase.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RepairDatabaseToJson(RepairDatabase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'avto': instance.avto?.toJson(),
      'cost': instance.cost,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'stage': instance.stage,
      'stages': instance.stages?.map((e) => e.toJson()).toList(),
    };

RepairStageDatabase _$RepairStageDatabaseFromJson(Map<String, dynamic> json) =>
    RepairStageDatabase(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RepairStageDatabaseToJson(
        RepairStageDatabase instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

WeatherForecast _$WeatherForecastFromJson(Map<String, dynamic> json) =>
    WeatherForecast(
      date: json['date'] == null
          ? null
          : DateOnly.fromJson(json['date'] as Map<String, dynamic>),
      temperatureC: json['temperatureC'] as int?,
      temperatureF: json['temperatureF'] as int?,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$WeatherForecastToJson(WeatherForecast instance) =>
    <String, dynamic>{
      'date': instance.date?.toJson(),
      'temperatureC': instance.temperatureC,
      'temperatureF': instance.temperatureF,
      'summary': instance.summary,
    };
