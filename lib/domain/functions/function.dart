import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart%20';
import 'package:netflix/domain/Model/download_model/download_model.dart';
import 'package:netflix/domain/Model/download_model/result.dart';

Future<List<dynamic>> movieList(String movieUrl) async {
  final responseKey = await get(Uri.parse(movieUrl));
  if (responseKey.statusCode == 200) {
    final jsonData = jsonDecode(responseKey.body);
    final result = DownloadModel.fromJson(jsonData);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}
