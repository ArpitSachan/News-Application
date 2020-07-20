import 'package:flutter/material.dart';
import 'package:newsapplication/pages/newsList.dart';
import 'package:provider/provider.dart';

import 'ViewModels/NewsArticleListViewModel.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: "News App",
        home:
        ChangeNotifierProvider(
            create: (_) => NewsArticleListViewModel(),
            child: NewsList()
        )
    );

  }

}

