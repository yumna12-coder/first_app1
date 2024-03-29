import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class CheckScreen extends StatelessWidget {
  final OtpFieldController otpController = OtpFieldController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.cleaning_services),
          onPressed: () {
            print("Floating button was pressed.");
            otpController.clear();
          },
        ),
        appBar: AppBar(
          title: Text('OTP Screen'),
        ),
        body: Column(
          children: [Center(child: Text('please write the attendance code ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey),)),SizedBox(height: 100,),
            Center(
              child: OTPTextField(
                controller: otpController,
                length: 5,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 45,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                style: TextStyle(fontSize: 17),
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  print("Completed: " + pin);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
