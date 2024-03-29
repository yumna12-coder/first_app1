
import 'package:first_app/screen_new/chat.dart';
import 'package:first_app/screen_new/check.dart';
import 'package:first_app/screen_new/finance.dart';
import 'package:first_app/screen_new/profile.dart';
import 'package:first_app/screen_new/slidercourse.dart';


import 'package:flutter/material.dart';

class MyGridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define a list of image paths for each index
    List<String> imagePaths = [
      'assets/image0.png',
      'assets/image1.jpg',
      'assets/image2.png',
      'assets/image3.jpg',
      'assets/image4.png',
    ];

    // Define a list of texts for each index
    List<String> itemTexts = [
      'Profile',
      'courses',
      'Finance',
      'Messages',
      'Attendance tracking',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Page'),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Number of columns
        children: List.generate(5, (index) {
          // Generate 6 grid items
          // Select image path and text for each index
          String imagePath = imagePaths[index]; // Use image path at current index
          String itemText = itemTexts[index]; // Use text at current index

          return GestureDetector(
            onTap: () {
              if (index == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profile()),
                );
              }  if (index == 2) {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => finance()),
    );}if (index == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckScreen()),
                );} if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => slidercourse()),
                );
              }if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => chat()),
                );}
            },
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        imagePath,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 8),
                      Text(
                        itemText,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}


