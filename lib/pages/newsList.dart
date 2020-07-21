

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapplication/ViewModels/NewsArticleListViewModel.dart';
import 'package:newsapplication/widget/newsListPage.dart';
import 'package:provider/provider.dart';

class NewsListPage extends StatefulWidget {

  @override
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {

  final _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<NewsArticleListViewModel>(context, listen: false).populateTopHeadlines();
  }

  Widget _buildList(NewsArticleListViewModel vm){
    switch(vm.loadingStatus){
      case LoadingStatus.searching:
        return Align(child: CircularProgressIndicator());
      case LoadingStatus.empty:
        return Align(child: Text("No results found"));
      case LoadingStatus.completed:
        return Align(child: NewsList(articles: vm.articles,));
    }
  }
  @override
  Widget build(BuildContext context) {

    final vm = Provider.of<NewsArticleListViewModel>(context);

    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
              title: Text("Latest News"),
          ),
        body: Column(children: <Widget>[

          TextField(
            controller: _controller,
            onSubmitted: (value){
              if(value.isNotEmpty){
              vm.search(value);}

            },
            decoration: InputDecoration(
              labelText: "Search",
              icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.search)),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: (){
                  _controller.clear();
                },
              )
            ),
          ),
//          Expanded(
//              child:vm.articles.isEmpty? Text("No results found"): NewsList(articles: vm.articles))
        _buildList(vm),
        ],)
    );

  }
}