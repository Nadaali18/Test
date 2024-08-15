import 'package:flutter/material.dart';
import 'package:news_app_gdsc/Widgets/custom_text.dart';
import 'package:news_app_gdsc/Widgets/categories_list_view.dart';
import 'package:news_app_gdsc/Widgets/recommended_list_view_indicator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const CustomText(
          text: 'News App',
          color: Colors.purple,
          fontWeight: FontWeight.bold,
          fontFamily: 'Pacifico',
          fontSize: 30,
        ),
        centerTitle: true,
      ),
     body: ListView(
      children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: CustomText(
            text: 'Categories',
            color: Colors.purple[300],
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            fontSize: 25,
                   ),
         ),

        const CategoriesListView(),

          Padding(
           padding: const EdgeInsets.all(8.0),
           child: CustomText(
            text: 'Recommended News',
            color: Colors.purple[300],
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico',
            fontSize: 25,
                   ),
         ),
    const RecommendedListViewBuilder()
       // RecommendedListView(),
      ],
     ),
    );
  }
}
