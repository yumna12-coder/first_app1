import 'package:flutter/material.dart';

class chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Email'),
        actions: [
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Implement sending email functionality here
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'From',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'To',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'CC',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'BCC',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Subject',
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: TextField(
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  labelText: 'Body',
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Icon(Icons.attach_file),
                SizedBox(width: 8.0),
                Text('Attach file'),
              ],
            ),
            SizedBox(height: 16.0),
            // Add more attachment options here if needed
          ],
        ),
      ),
    );
  }
}



