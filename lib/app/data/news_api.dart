import 'dart:convert';

import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model_news.dart';

class NewsRepository {
  final _url = "https://jakpost.vercel.app/api/category/indonesia/society";

  Future getNews() async {
    try {
      final response = await http.get(Uri.parse(_url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        print(response.body);
        List<News> news = data.map((e) => News.fromJson(e)).toList();
        return data;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

// import 'package:dio/dio.dart';

// /// More examples see https://github.com/cfug/dio/blob/main/example
// void getNews() async {
//   final dio = Dio();
//   final response = await dio
//       .get('https://jakpost.vercel.app/api/category/indonesia/society');
//   print(response.data.toString());
// }
