import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/page5.dart';
import 'package:flutter_assignment_ui/page_3.dart';
import 'package:flutter_assignment_ui/widget.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFFFFFFFFF), Color(0xFFFFFFFFF)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Page3()));
                  },
                  child: Container(
                      height: 24,
                      width: 24,
                      child: Image.network(
                        'https://cdn-icons-png.flaticon.com/128/2722/2722991.png',
                        height: 24,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Container(
                  height: 82,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text('Sign Up', 24, FontWeight.w700, 0xFFF1D1E25),
                      SizedBox(
                        height: 7,
                      ),
                      text('Create account and enjoy all services', 16,
                          FontWeight.w400, 0xFFF808D9E),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                    width: 345, height: 48, child: custom_elebatbutton()),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: custom_devidar()),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: text('OR', 16, FontWeight.w700, 0xFFF808D9E),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5, left: 11),
                      child: custom_devidar(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  child: custom_text_from('Type your username', Icons.person),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  child:
                      custom_text_from('Type your email', Icons.email_outlined),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                    child: custom_text_from(
                        'Type your password', Icons.lock_outline_rounded,
                        sd: Icon(Icons.visibility_off))),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Container(
                      child: Checkbox(value: false, onChanged: (value) {}),
                    ),
                  ),
                  text('I agree to the company', 14, FontWeight.w400,
                      0xFFF808D9E),
                  SizedBox(
                    width: 3,
                  ),
                  text('Term of Service', 14, FontWeight.w700, 0xFFF1D1E25),
                  SizedBox(
                    width: 3,
                  ),
                  text('and', 14, FontWeight.w400, 0xFFF808D9E),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 56),
                child: text('Privacy Policy', 14, FontWeight.w700, 0xFFF1D1E25),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: 358,
                  height: 48,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: custom_ElevatedButton(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Page5()));
                      }, 'Sign Up')),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text('Have an account?', 14, FontWeight.w700, 0xFFF808D9E),
                    InkWell(
                      onTap: () {},
                      child: text('Sign In', 14, FontWeight.w700, 0xFFF0062FF),
                    ),
                  ],
                ),
              ),
              Container(
                height: 73,
              )
            ],
          ),
        ),
      ),
    );
  }
}
