import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapplication/models/newsArticle.dart';

class Webservice {

  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=8645e2654f8047f392baf4295138d032";

    final response = await http.get(url);

    if(response.statusCode == 200) {

      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();

    } else {
      throw Exception("Failed to get top news");
    }

  }
}
