import 'package:flutter/material.dart';
import 'package:petsphere/login-page.dart';

class Husky extends StatelessWidget {
  const Husky({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen size lay lo taa ke har phone (chota/bara) pe sahi fit ho
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0),
        elevation: 0,
      ),
      // SingleChildScrollView -> agar content screen se bara ho (chote phones pe)
      // to overflow error na aye, scroll ho jaye
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // Fixed width: 440 hata kar screen width use kar rahe hain
                Image.asset(
                  'images/husky.png',
                  fit: BoxFit.cover,
                  width: size.width,
                  height: size.width, // square-ish image area, screen ke hisaab se
                ),
                Container(
                  width: size.width,
                  height: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff000000).withOpacity(0),
                        const Color(0xff0F1B2D).withOpacity(0.8),
                      ],
                      stops: const [0.5, 1],
                    ),
                  ),
                ),
                // left:320 fixed tha -> ab "right" use kiya hai
                // taa ke chote screen pe bhi button andar hi rahe, overflow na ho
                Positioned(
                  top: 60,
                  right: 20,
                  child: Container(
                    width: 66.81,
                    height: 38.33,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.2),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffDFE8F5),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Container(
                        width: 28,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff00966C),
                        ),
                      ),
                      const SizedBox(width: 2),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffDFE8F5),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Padding + Text -> text apne aap wrap ho jaega, koi fixed width nahi
                  const Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Text(
                      'Shop with\nConfidence',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // \n manually daalne ki bajaye simple text diya, wo khud wrap hoga
                  // taa ke chote screen pe words katen na
                  const Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Text(
                      'Every seller is verified. Secure payments, genuine health records & buyer protection guaranteed.',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        color: Color(0xff7A8FA8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Button ki fixed width 330 hata kar screen ke hisaab se di hai
                  // taa ke chote phone pe overflow na aye
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: 57,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xff00966C),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                        child: const Text(
                          'Next  >',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontFamily: 'Inter',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:petsphere/login-page.dart';
// class Husky extends StatelessWidget {
//   const Husky({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.white.withOpacity(0.0),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             child: Stack(
//               children: [
//                 Image.asset('images/husky.png',fit: BoxFit.fill,
//                   width: 440.0,),
//                 Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                         begin: AlignmentGeometry.topCenter,
//                         end: AlignmentGeometry.bottomCenter,
//                         colors: [
//                       Color(0xff000000).withOpacity(0),
//                       Color(0xff0F1B2D).withOpacity(0.8)
//                     ],
//                       stops: [
//                         0.5,
//                         1,
//                       ]
//                     )
//                   ),
//                 ),
//                 Positioned(
//                   top: 60,
//                   left: 320.19,
//                   child: Container(
//
//                     width: 66.81,
//                     height: 38.33,
//                     child: Center(
//                       child: TextButton(onPressed: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
//                       }, child: Text('Skip',style: TextStyle(fontWeight: FontWeight(700), fontSize: 14, fontFamily: 'Inter' , color: Colors.white),)),
//                     ),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20),
//                       color: Colors.white.withOpacity(0.2),
//                       border: BoxBorder.all(
//                         color: Colors.white.withOpacity(0.3),
//                       )
//                     ),
//
//                   ),
//                 )
//               ],
//
//             ),
//
//           ),
//           Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//
//               children: [
//                 SizedBox(
//                   height: 40,
//                 ),
//                 Row(
//                   children: [
//                     SizedBox(
//                       width:10,
//                     ),
//                     Container(
//                       width: 8,
//                       height: 8,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color(0xffDFE8F5),
//                       ),
//
//                     ),
//                     SizedBox(
//                       width:4,
//                     ),
//                     Container(
//                       width: 28,
//                       height: 8,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//
//                         color: Color(0xff00966C),
//                       ),
//
//                     ),
//                     SizedBox(
//                       width:2,
//                     ),
//                     Container(
//                       width: 8,
//                       height: 8,
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Color(0xffDFE8F5),
//                       ),
//
//                     ),
//
//
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                     left: 12
//                   ),
//                   child: Text('Shop with\nConfidence', style: TextStyle( fontFamily: 'Inter',fontWeight: FontWeight(800),fontSize: 28,color: Colors.black),),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 12
//                   ),
//                   child: Text('Every seller is verified. Secure payments,\ngenuine health records & buyer protection \nguaranteed.', style: TextStyle( fontFamily: 'Inter',fontSize: 18,color: Color(0xff7A8FA8)),),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(30.0),
//                   child: TextButton(
//                     onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
//                     },
//                     child: Container(
//                       child: Center(
//                         child:  Text('Next  > ',style: TextStyle(fontWeight: FontWeight(700), fontSize: 18, fontFamily: 'Inter' , color: Colors.white),)
//
//
//
//                       ),
//                       width: 330,
//                       height: 57,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(19),
//
//                         color: Color(0xff00966C),
//                       ),
//
//                     ),
//                   ),
//                 ),
//               ],
//
//             ),
//           decoration: BoxDecoration(
//             color: Colors.white,
//
//           ),
//
//           ),
//         ],
//       ),
//     );
//   }
// }
