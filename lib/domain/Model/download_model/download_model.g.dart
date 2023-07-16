// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadModel _$DownloadModelFromJson(Map<String, dynamic> json) =>
    DownloadModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DownloadModelToJson(DownloadModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
