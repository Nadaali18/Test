import 'package:dio/dio.dart';
import 'package:news_app_gdsc/model/news_Item.dart';

class NewsServiceApi{
  NewsServiceApi(this.dio);
  final Dio dio;

  Future<List<NewsItem>>? getNews() async{
    
    dynamic response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=e4543b35387e4f848846fa95e0f40c72');
    
    Map<String,dynamic> jsonData= response.data;
    
    List<dynamic> articales =jsonData['articles'];

    List<NewsItem> articlesList=[];

    for(var artical in articales){
      NewsItem articalModel =NewsItem(
        description: artical['description'],
        imagePath: artical['urlToImage'],
        title: artical['title'],
        url: artical['url'],
        );
        articlesList.add(articalModel);
    }
   return articlesList;
  }
}
