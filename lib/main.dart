import 'package:flutter/material.dart';

void main() {
  runApp(const PetSphere());
}

class PetSphere extends StatelessWidget {
  const PetSphere({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(width: 20),
                  Image(
                    image: AssetImage('images/petsphere.png'),
                    height: 42,
                    width: 42,
                  ),
                  Text(
                    'Pet',
                    style: TextStyle(
                      // color: Color(0xff00966C),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight(800),
                    ),
                  ),
                  Text(
                    'Sphere',
                    style: TextStyle(
                      color: Color(0xff00966C),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight(800),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Welcome Back !',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xff0F1B2D),
                    fontSize: 28,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight(800),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Sign in to your account to continue !',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xff7A8FA8),
                    fontSize: 15,
                    fontFamily: 'Inter',

                    // fontWeight: FontWeight(),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Email Address',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xff0F1B2D),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight(800),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '@gmail.com',
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email_outlined),
                    fillColor: Color(0xffEEF3FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDFE8F5)),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDFE8F5)),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Password',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xff0F1B2D),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight(800),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: '••••••••',
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock_open),
                    suffixIcon: Icon(Icons.visibility_outlined),
                    fillColor: Color(0xffEEF3FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDFE8F5)),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffDFE8F5)),
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 260),
                child: Text(
                  'Forgot Password?',
                  // textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xff00966C),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight(800),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 58,
                  width: 337,
                  // color: Color(0xff00966C),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color(0xff00966C),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('or continue with', textAlign: TextAlign.center),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 50),
                  Container(
                    height: 49.67,
                    width: 162.5,
                    // color: Color(0xff00966C),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffEEF3FA),
                      border: BoxBorder.all(color: Color(0xffDFE8F5)),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        Image(
                          image: AssetImage('images/google.png'),
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(width: 15),
                        Center(
                          child: Text(
                            'Google',
                            style: TextStyle(
                              color: Color(0xff0F1B2D),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10),
                  Container(
                    height: 49.67,
                    width: 162.5,
                    // color: Color(0xff00966C),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Color(0xffEEF3FA),
                      border: BoxBorder.all(color: Color(0xffDFE8F5)),
                    ),
                    child: Row(
                      children: [
                        Image(image: AssetImage('images/facebook.png')),
                        Center(
                          child: Text(
                            'Facebook',
                            style: TextStyle(
                              color: Color(0xff0F1B2D),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                children: [
                  SizedBox(width: 100),

                  Text(
                    'New to PetSphere? ',
                    style: TextStyle(
                      color: Color(0xff7A8FA8),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight(500),
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xff00966C),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight(800),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
