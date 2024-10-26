import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/widget.dart';
import 'package:pinput/pinput.dart';

class SignUpVerifyCodeEmail extends StatefulWidget {
  const SignUpVerifyCodeEmail({Key? key}) : super(key: key);

  @override
  _SignUpVerifyCodeEmailState createState() => _SignUpVerifyCodeEmailState();
}

class _SignUpVerifyCodeEmailState extends State<SignUpVerifyCodeEmail> {
  final FocusNode _focusNode = FocusNode(); // FocusNode ডিফাইন করা হয়েছে

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode); // ফোকাস অনুরোধ করা হয়েছে
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: custom_backbutton(),
        ),
      ),
      body: Container(
        color: Color(0xFFFFFFFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text('Verify Code', 24, FontWeight.w700, 0xFF1D1E25),
                  SizedBox(height: 5),
                  text('Please enter the code we just sent to email ', 16, FontWeight.w400, 0xFF808D9E),
                  text('timsmxxx@email.com', 16, FontWeight.w400, 0xFF1D1E25),
                ],
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Pinput(
                focusNode: _focusNode, 
                length: 4,
                autofocus: true,
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF242B42),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color(0xFF0062FF), width: 1),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blueAccent, width: 2),
                  ),
                
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
