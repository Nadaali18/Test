import 'package:flutter/material.dart';
import 'package:news_app_gdsc/Widgets/recommended_news_card.dart';
import 'package:news_app_gdsc/model/news_item.dart';

// ignore: must_be_immutable
class RecommendedListView extends StatelessWidget {
   RecommendedListView({super.key,required this.articles});
  List<NewsItem>articles=[];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: articles.length,
      itemBuilder: (context,index)=> CardNews(newsItem: articles[index],),
      );
  }
}