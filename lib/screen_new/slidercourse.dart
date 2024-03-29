import 'package:flutter/material.dart';
import 'package:scaled_list/scaled_list.dart';

class slidercourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Center(
            child: ScaledList(
              itemCount: categories.length,
              itemColor: (index) {
                return kMixedColors[index % kMixedColors.length];
              },
              itemBuilder: (index, selectedIndex) {
                final category = categories[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: selectedIndex == index ? 100 : 80,
                      child: Image.asset(category.image),
                    ),
                    SizedBox(height: 15),
                    Text(
                      category.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: selectedIndex == index ? 25 : 20),
                    )
                  ],
                );
              },
            ),
          ),
    );
  }

  final List<Color> kMixedColors = [
    Color(0xff71A5D7),
    Color(0xff72CCD4),
    Color(0xffFBAB57),
    Color(0xffF8B993),
    Color(0xff962D17),
    Color(0xffc657fb),
    Color(0xfffb8457),
  ];

  final List<Category> categories = [
    Category(image: "assets/app.jpg", name: "web "),
    Category(image: "assets/web.jpg", name: "web "),
    Category(image: "assets/ai.jpg", name: "artificial inteligence"),
    Category(image: "assets/english.jpg", name: "english course for all ages"),

  ];
}

class Category {
  final String image;
  final String name;

  Category({required this.image, required this.name});
}
