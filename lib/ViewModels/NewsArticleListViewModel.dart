

import 'package:flutter/material.dart';
import 'package:newsapplication/services/webService.dart';
import 'package:newsapplication/models/newsArticle.dart';
import 'NewsArticleViewModel.dart';

class NewsArticleListViewModel extends ChangeNotifier {

  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();



  Future<void> populateTopHeadlines() async {
    List<NewsArticle> newsArticles = await Webservice().fetchTopHeadlines();
    this.articles = newsArticles.map((article) => NewsArticleViewModel(article: article)).toList();
    notifyListeners();
  }

}
