import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app_gdsc/Widgets/custom_text.dart';
import 'package:news_app_gdsc/Widgets/recommended_news_list_view.dart';
import 'package:news_app_gdsc/model/news_item.dart';
import 'package:news_app_gdsc/service/news_service_api.dart';

class RecommendedListViewBuilder extends StatefulWidget {
  const RecommendedListViewBuilder({super.key});

  @override
  State<RecommendedListViewBuilder> createState() => _RecommendedListViewBuilderState();
}

class _RecommendedListViewBuilderState extends State<RecommendedListViewBuilder> {

dynamic future;
@override
void initState() {
  super.initState();
  future = NewsServiceApi(Dio()).getNews();
}
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future, builder:(context,snapshot){
      if(snapshot.hasData){
        return RecommendedListView(articles: snapshot.data);
      }else if(snapshot.hasError){
        return const CustomText(text: 'There is an error now try again later',);
      }else{
        return const Center(child: CircularProgressIndicator());
      }
    } );
  }
}