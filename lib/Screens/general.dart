import 'package:flutter/material.dart';
import 'package:news_app_gdsc/Widgets/custom_text.dart';

class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'General News',color: const Color.fromARGB(255, 135, 23, 23),),
        centerTitle: true,
      ),
    );
  }
}