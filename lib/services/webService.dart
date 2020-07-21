import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:newsapplication/constants.dart';
import 'package:newsapplication/models/newsArticle.dart';

class Webservice {

  Future<List<NewsArticle>> fetchHeadlinesByKeywords(String keyword) async{

    final response = await http.get(Constants.headlinesfor(keyword));
    if(response.statusCode == 200) {

      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((json) => NewsArticle.fromJSON(json)).toList();

    } else {
      throw Exception("Failed to get top news");
    }
  }
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    final response = await http.get(Constants.TOP_HEADLINES_URL);


    if(response.statusCode == 200) {

      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();

    } else {
      throw Exception("Failed to get top news");
    }

  }
}
