import 'package:flutter/material.dart';
import 'package:news_app_gdsc/Widgets/custom_text.dart';
import 'package:news_app_gdsc/model/news_item.dart';
import 'package:share_plus/share_plus.dart';

class CardNews extends StatefulWidget {
  const CardNews({super.key,required this.newsItem});
 final NewsItem newsItem;
  @override
  State<CardNews> createState() => _CardNewsState();
}

class _CardNewsState extends State<CardNews> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Card(
           elevation: 6,
           shadowColor: Colors.black,
           shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
              child: Image.network(widget.newsItem.imagePath??'https://www.bing.com/images/search?view=detailV2&ccid=udoq18ux&id=887015586D08AEC6D7BA2087F2F3674680E373BB&thid=OIP.udoq18uxDpu6UHi2H__97gAAAA&mediaurl=https%3a%2f%2fdevemyhg.lycee-darchicourt.net%2fwp-content%2fuploads%2f2018%2f01%2fNo-picture.png&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.b9da2ad7cbb10e9bba5078b61ffffdee%3frik%3du3PjgEZn8%252fKHIA%26pid%3dImgRaw%26r%3d0%26sres%3d1%26sresct%3d1%26srh%3d799%26srw%3d779&exph=308&expw=300&q=no+photo&simid=608049391471241344&FORM=IRPRST&ck=399BCFE39C3E6099700717EBC89CBB0B&selectedIndex=6&itb=0',
              height: 200,width: double.infinity,fit: BoxFit.fill,
              ),
             ),

              Padding(
               padding:const EdgeInsets.all(8.0),
               child: CustomText(
               text: widget.newsItem.title,
               color: Colors.black,
               fontWeight: FontWeight.bold,
               ),
             ),

             Padding(
               padding: const EdgeInsets.all(8.0),
               child: CustomText(
               text: widget.newsItem.description,
               color: Colors.grey,
               ),
             ),

             Row(
              children: [
                IconButton(onPressed:(){
                  final urlReview=widget.newsItem.url;
                  Share.share('Enjoy reading this news \n$urlReview');
                }, icon: const Icon(Icons.share,color: Colors.purple,))
              ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
