import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'download_model.g.dart';

@JsonSerializable()
class DownloadModel {
  List<Result>? results;

  DownloadModel({this.results});

  factory DownloadModel.fromJson(Map<String, dynamic> json) {
    return _$DownloadModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadModelToJson(this);
}
