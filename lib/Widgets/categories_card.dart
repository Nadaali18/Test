import 'package:flutter/material.dart';
import 'package:news_app_gdsc/Widgets/custom_text.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key,required this.image,required this.path,required this.text});
final String text;
final String image;
final Widget path;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
               MaterialPageRoute(
                builder: (context)=>path
                ),
                );
          },
          child: Card(
            elevation: 10,
            shadowColor: Colors.black,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: [
                ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(image,height: double.infinity,width: double.infinity,fit: BoxFit.fill,),
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color:const Color.fromRGBO(0, 0, 0, 0.5)
                  ),
                  child: Center(child: CustomText(text: text,fontWeight: FontWeight.bold,color: Colors.white,)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}