import 'package:flutter/material.dart';

class finance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildFinanceOption(
                context,
                text: 'Pay Now',
                icon: Icons.payment,
                backgroundColor: Colors.blue,
              ),
              SizedBox(height: 20),
              buildFinanceOption(
                context,
                text: 'Request to Delay Payment',
                icon: Icons.access_time,
                backgroundColor: Colors.blue,
              ),
              SizedBox(height: 20),
              buildFinanceOption(
                context,
                text: 'Monthly Installments',
                icon: Icons.calendar_today,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFinanceOption(BuildContext context, {required String text, required IconData icon, required Color backgroundColor}) {
    return GestureDetector(
      onTap: () {
        // Navigate to the profile screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
      },
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
