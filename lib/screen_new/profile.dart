import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400.0),
          child: Stack(
            children: [
              // Profile Picture
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.grey.shade200,
                  padding: EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage('assets/image0.png'), // Replace with actual image
                  ),
                ),
              ),
              // User Details
              Positioned(
                top: 140,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.grey.shade100,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'yosef muhammad',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 8.0),


                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'yosef12@example.com',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Bio:',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(8.0),
                        color: Colors.grey.shade200,
                        child: Text(
                          'Web dev',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        'Contact Details:',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(8.0),
                        color: Colors.grey.shade200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone: 078567890',
                              style: TextStyle(fontSize: 16.0),
                            ),
                            Text(
                              'Address:  Street, City, Country',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


