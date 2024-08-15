import 'package:flutter/material.dart';
import 'package:news_app_gdsc/Screens/business.dart';
import 'package:news_app_gdsc/Screens/entertainment.dart';
import 'package:news_app_gdsc/Screens/general.dart';
import 'package:news_app_gdsc/Screens/health.dart';
import 'package:news_app_gdsc/Screens/science.dart';
import 'package:news_app_gdsc/Screens/sports.dart';
import 'package:news_app_gdsc/Screens/technology.dart';
import 'package:news_app_gdsc/Widgets/categories_card.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {

List<CategoriesCard> objects=const[
  CategoriesCard(image:'assets/images/general.png', path: General(), text: 'General'),
  CategoriesCard(image: 'assets/images/Business.png', path: Business(), text: 'Business'),
  CategoriesCard(image: 'assets/images/entertainment.png', path: Entertainment(), text:'Entertainment'),
  CategoriesCard(image: 'assets/images/health.png', path: Health(), text: 'Health'),
  CategoriesCard(image: 'assets/images/Science.png', path: Science(), text: 'Science'),
  CategoriesCard(image: 'assets/images/sports.png', path: Sports(), text:'Sports'),
  CategoriesCard(image: 'assets/images/technology.png', path: Technology(), text:'Technology'),
];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: objects.length,
        itemBuilder: (context,index)=>objects[index],
        ),
    );
  }
}