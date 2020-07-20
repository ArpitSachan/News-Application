

import 'package:flutter/material.dart';
import 'package:newsapplication/ViewModels/NewsArticleListViewModel.dart';
import 'package:provider/provider.dart';

class NewsList extends StatefulWidget {

  @override
  _NewsListState createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<NewsArticleListViewModel>(context, listen: false).populateTopHeadlines();
  }
  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<NewsArticleListViewModel>(context);

    return Scaffold(
        appBar: AppBar(
            title: Text("Latest News")
        ),
        body: ListView.builder(
          itemCount: vm.articles.length,
          itemBuilder: (context, index) {

            final article = vm.articles[index];

            return Card(
              child: ListTileTheme(
                child: ListTile(
                    leading: Container(

                        width: 100,
                        height: 100,
                        child: article.imageURL == null ? Image.asset("images/news-placeholder.png") : Image.network(article.imageURL)),
                    title: Text(article.title),
                ),
              ),
            );
          },
        )
    );

  }
}