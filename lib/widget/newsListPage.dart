
import 'package:flutter/material.dart';
import 'package:newsapplication/ViewModels/NewsArticleViewModel.dart';
import 'package:newsapplication/pages/NewsArticleDetails.dart';

class NewsList extends StatelessWidget {

  final List<NewsArticleViewModel> articles;
  NewsList({this.articles});

  void _showNewsArticleDetails(BuildContext context, NewsArticleViewModel article){
    Navigator.push(context, MaterialPageRoute
      (builder: (context)=>NewsArticleDetailsPage(article: article)));
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {

        final article = articles[index];

        return Card(
          elevation: 10,
          shadowColor: Colors.white,
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
          ),
          child: InkWell(
            onTap: (){
              _showNewsArticleDetails(context, article);
            },
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(

                      width: 70,
                      height: 70,
                      child: article.imageURL == null ? Image.asset("images/news-placeholder.png") : Image.network(article.imageURL)),
                ),
                Flexible(
                  child: Text(article.title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(
                        color: Color(0xFF1D2136)
                    ),),
                ),
              ],
            ),
          ),

        );
      },
    );
  }
}
