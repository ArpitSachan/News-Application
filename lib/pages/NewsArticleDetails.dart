
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsapplication/ViewModels/NewsArticleViewModel.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsArticleDetailsPage extends StatelessWidget {
  final Completer<WebViewController> _controller = Completer<WebViewController>();
  final NewsArticleViewModel article;
  NewsArticleDetailsPage({this.article});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${this.article.source.toUpperCase()}",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
      body: WebView(
         initialUrl: this.article.url,
        onWebViewCreated: (WebViewController webViewController){
           _controller.complete(webViewController);
        },
      ),
    );
  }
}

