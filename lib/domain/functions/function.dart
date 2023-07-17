import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:netflix/domain/Model/download_model/download_model.dart';

import '../Model/download_model/upcoming_model.dart';

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

Future<UpcomingMovieModel?> upcomingMovieList() async {
  String url =
      "https://api.themoviedb.org/3/movie/upcoming?api_key=71fff30d09043e770f48f737f18cee2f#";

  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    UpcomingMovieModel data =
        UpcomingMovieModel.fromJson(jsonDecode(response.body));
    return data;
  } else {
    return null;
  }
}

Future<UpcomingMovieModel?> eveybodyWatching() async {
  String url =
      "https://api.themoviedb.org/3/trending/all/day?api_key=71fff30d09043e770f48f737f18cee2f#";

  var response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    UpcomingMovieModel data =
        UpcomingMovieModel.fromJson(jsonDecode(response.body));
    return data;
  } else {
    return null;
  }
}

Future<List<dynamic>> topTen() async {
  final response = await http.get(
    Uri.parse(
        "https://api.themoviedb.org/3/movie/upcoming?api_key=71fff30d09043e770f48f737f18cee2f#"),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);

    final result = DownloadModel.fromJson(jsondata);

    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}

Future<List<dynamic>> getimageSearchGrid(String search) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/search/movie?api_key=ceb05cb35d63209923547efcbdf2d9df&query=${search}'));

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = DownloadModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}

Future<List<dynamic>> getComingSoon() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=962e2bc6b6c1ed43097036badbed8dbf'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);

    final result = DownloadModel.fromJson(jsondata);
   
    if (result.results != null) {
      return result.results!;
    }
     
  }
   List<Result>empty = [];
    return empty;
   
}



