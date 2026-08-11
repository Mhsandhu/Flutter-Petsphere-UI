import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // Screen width le rahe hain taa ke fixed widths ki jagah
    // responsive values use kar saken
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0),
      ),
      // SingleChildScrollView -> chote phone (kam height) pe bhi
      // overflow error nahi aayega, content scroll ho jayega
      body: SingleChildScrollView(
        child: Padding(
          // Left/right dono taraf equal padding, taa ke content
          // kisi bhi screen width pe centered aur safe rahe
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Row(
                children: [
                  Image(
                    image: const AssetImage('images/petsphere.png'),
                    height: 42,
                    width: 42,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Pet',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Text(
                    'Sphere',
                    style: TextStyle(
                      color: Color(0xff00966C),
                      fontSize: 20,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Welcome Back !',
                style: TextStyle(
                  color: Color(0xff0F1B2D),
                  fontSize: 28,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'Sign in to your account to continue !',
                style: TextStyle(
                  color: Color(0xff7A8FA8),
                  fontSize: 15,
                  fontFamily: 'Inter',
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                'Email Address',
                style: TextStyle(
                  color: Color(0xff0F1B2D),
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '@gmail.com',
                  labelText: 'Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  fillColor: const Color(0xffEEF3FA),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffDFE8F5)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffDFE8F5)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              const Text(
                'Password',
                style: TextStyle(
                  color: Color(0xff0F1B2D),
                  fontSize: 13,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '••••••••',
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock_open),
                  suffixIcon: const Icon(Icons.visibility_outlined),
                  fillColor: const Color(0xffEEF3FA),
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffDFE8F5)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffDFE8F5)),
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Fixed "left: 260" padding hata kar Align use kiya
              // taa ke "Forgot Password?" hamesha right side pe rahe,
              // chahe screen chota ho ya bara
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xff00966C),
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              // Fixed width: 337 hata kar double.infinity kiya,
              // GestureDetector se click bhi ab kaam karega
              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff00966C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'or continue with',
                  style: TextStyle(color: Color(0xff7A8FA8)),
                ),
              ),
              const SizedBox(height: 20),
              // Fixed width containers (162.5 x2) hata kar Expanded use kiya
              // taa ke dono buttons available width ko equally share karen,
              // kisi bhi screen size pe overflow na ho
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xffEEF3FA),
                        border: Border.all(color: const Color(0xffDFE8F5)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('images/google.png'),
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Google',
                            style: TextStyle(
                              color: Color(0xff0F1B2D),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xffEEF3FA),
                        border: Border.all(color: const Color(0xffDFE8F5)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: const AssetImage('images/facebook.png'),
                            height: 24,
                            width: 24,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Facebook',
                            style: TextStyle(
                              color: Color(0xff0F1B2D),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Fixed "left: 100" spacing hata kar Center use kiya
              // taa ke ye row hamesha horizontally center rahe
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'New to PetSphere? ',
                      style: TextStyle(
                        color: Color(0xff7A8FA8),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xff00966C),
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}





// import 'package:flutter/material.dart';
// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});
//
//       @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//         appBar: AppBar(
//
//           backgroundColor: Colors.white.withOpacity(0.0),),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 120),
//           Row(
//             children: [
//               SizedBox(width: 20),
//               Image(
//                 image: AssetImage('images/petsphere.png'),
//                 height: 42,
//                 width: 42,
//               ),
//               Text(
//                 'Pet',
//                 style: TextStyle(
//                   // color: Color(0xff00966C),
//                   fontSize: 20,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight(800),
//                 ),
//               ),
//               Text(
//                 'Sphere',
//                 style: TextStyle(
//                   color: Color(0xff00966C),
//                   fontSize: 20,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight(800),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 30),
//           Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Text(
//               'Welcome Back !',
//               // textAlign: TextAlign.start,
//               style: TextStyle(
//                 color: Color(0xff0F1B2D),
//                 fontSize: 28,
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight(800),
//               ),
//             ),
//           ),
//           SizedBox(height: 15),
//           Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Text(
//               'Sign in to your account to continue !',
//               // textAlign: TextAlign.start,
//               style: TextStyle(
//                 color: Color(0xff7A8FA8),
//                 fontSize: 15,
//                 fontFamily: 'Inter',
//
//                 // fontWeight: FontWeight(),
//               ),
//             ),
//           ),
//           SizedBox(height: 35),
//           Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Text(
//               'Email Address',
//               // textAlign: TextAlign.start,
//               style: TextStyle(
//                 color: Color(0xff0F1B2D),
//                 fontSize: 13,
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight(800),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
//             child: TextFormField(
//               decoration: InputDecoration(
//                 hintText: '@gmail.com',
//                 labelText: 'Email',
//                 prefixIcon: Icon(Icons.email_outlined),
//                 fillColor: Color(0xffEEF3FA),
//                 filled: true,
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Color(0xffDFE8F5)),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Color(0xffDFE8F5)),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 35),
//           Padding(
//             padding: const EdgeInsets.only(left: 30),
//             child: Text(
//               'Password',
//               // textAlign: TextAlign.start,
//               style: TextStyle(
//                 color: Color(0xff0F1B2D),
//                 fontSize: 13,
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight(800),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 25.0, right: 25, top: 10),
//             child: TextFormField(
//               decoration: InputDecoration(
//                 hintText: '••••••••',
//                 labelText: 'Password',
//                 prefixIcon: Icon(Icons.lock_open),
//                 suffixIcon: Icon(Icons.visibility_outlined),
//                 fillColor: Color(0xffEEF3FA),
//                 filled: true,
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Color(0xffDFE8F5)),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Color(0xffDFE8F5)),
//                   borderRadius: BorderRadius.circular(14),
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 15),
//           Padding(
//             padding: const EdgeInsets.only(left: 260),
//             child: Text(
//               'Forgot Password?',
//               // textAlign: TextAlign.start,
//               style: TextStyle(
//                 color: Color(0xff00966C),
//                 fontSize: 13,
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight(800),
//               ),
//             ),
//           ),
//           // SizedBox(
//           //   height: 30,
//           // ),
//           Padding(
//             padding: const EdgeInsets.all(40.0),
//             child: Container(
//               height: 58,
//               width: 337,
//               // color: Color(0xff00966C),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(18),
//                 color: Color(0xff00966C),
//               ),
//               child: Center(
//                 child: Text(
//                   'Sign In',
//                   style: TextStyle(
//                     color: Color(0xffFFFFFF),
//                     fontFamily: 'Inter',
//                     fontSize: 16,
//                     fontWeight: FontWeight(700),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//
//               Text('or continue with', textAlign: TextAlign.center),
//             ],
//           ),
//           SizedBox(height: 20),
//           Row(
//             children: [
//               SizedBox(width: 50),
//               Container(
//                 height: 49.67,
//                 width: 162.5,
//                 // color: Color(0xff00966C),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(18),
//                   color: Color(0xffEEF3FA),
//                   border: BoxBorder.all(color: Color(0xffDFE8F5)),
//                 ),
//                 child: Row(
//                   children: [
//                     SizedBox(width: 15),
//                     Image(
//                       image: AssetImage('images/google.png'),
//                       height: 30,
//                       width: 30,
//                     ),
//                     SizedBox(width: 15),
//                     Center(
//                       child: Text(
//                         'Google',
//                         style: TextStyle(
//                           color: Color(0xff0F1B2D),
//                           fontFamily: 'Inter',
//                           fontSize: 14,
//                           fontWeight: FontWeight(700),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               SizedBox(width: 10),
//               Container(
//                 height: 49.67,
//                 width: 162.5,
//                 // color: Color(0xff00966C),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(18),
//                   color: Color(0xffEEF3FA),
//                   border: BoxBorder.all(color: Color(0xffDFE8F5)),
//                 ),
//                 child: Row(
//                   children: [
//                     Image(image: AssetImage('images/facebook.png')),
//                     Center(
//                       child: Text(
//                         'Facebook',
//                         style: TextStyle(
//                           color: Color(0xff0F1B2D),
//                           fontFamily: 'Inter',
//                           fontSize: 14,
//                           fontWeight: FontWeight(700),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 30),
//           Row(
//             children: [
//               SizedBox(width: 100),
//
//               Text(
//                 'New to PetSphere? ',
//                 style: TextStyle(
//                   color: Color(0xff7A8FA8),
//                   fontSize: 15,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight(500),
//                 ),
//               ),
//               Text(
//                 'Sign Up',
//                 style: TextStyle(
//                   color: Color(0xff00966C),
//                   fontSize: 15,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight(800),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
