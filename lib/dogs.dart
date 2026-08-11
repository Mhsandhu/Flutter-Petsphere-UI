import 'package:flutter/material.dart';
import 'package:petsphere/husky.dart';
import 'package:petsphere/login-page.dart';

class Dogs extends StatelessWidget {
  const Dogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                // width: 440 (fixed) hata kar double.infinity kiya,
                // taa ke image har screen width pe fully fit ho
                Image.asset(
                  'images/dogs.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Container(
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
                // left: 305.19 (fixed) hata kar right use kiya,
                // taa ke chote screen pe bhi Skip button andar hi rahe
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
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              // SingleChildScrollView -> agar iss Expanded ke andar text
              // itna bara ho jaye ke jagah kam pad jaye, to overflow ki
              // bajaye scroll ho jayega
              child: SingleChildScrollView(
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
                        const SizedBox(width: 2),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Text(
                        'Find Your\nPerfect Pet',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Manual \n hata kar simple text diya, taa ke ye
                    // khud-ba-khud wrap ho, kisi bhi screen width pe
                    // words katen ya overflow na ho
                    const Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Text(
                        'Discover thousands of pets from verified sellers across Pakistan. Your dream companion is just a tap away.',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          color: Color(0xff7A8FA8),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Fixed width: 337 hata kar padding ke andar
                    // double.infinity kiya, taa ke button har screen
                    // pe sahi fit ho
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 58,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Husky()));
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
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:petsphere/husky.dart';
// import 'package:petsphere/login-page.dart';
// class Dogs extends StatelessWidget {
//   const Dogs({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//         appBar: AppBar(
//           backgroundColor: Colors.white.withOpacity(0.0)),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Container(
//               child: Stack(
//                 children: [
//                   Image.asset('images/dogs.png',fit: BoxFit.fill,
//                     width: 440.0,),
//                   Container(
//                     decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: AlignmentGeometry.topCenter,
//                             end: AlignmentGeometry.bottomCenter,
//                             colors: [
//                               Color(0xff000000).withOpacity(0),
//                               Color(0xff0F1B2D).withOpacity(0.8)
//                             ],
//                             stops: [
//                               0.5,
//                               1,
//                             ]
//                         )
//                     ),
//                   ),
//                   Positioned(
//                     top: 60,
//                     left: 305.19,
//                     child: Container(
//
//                       width: 66.81,
//                       height: 38.33,
//                       child: Center(
//                         child: TextButton(onPressed: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
//                         }, child: Text('Skip',style: TextStyle(fontWeight: FontWeight(700), fontSize: 14, fontFamily: 'Inter' , color: Colors.white),)),
//                       ),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: Colors.white.withOpacity(0.2),
//                           border: BoxBorder.all(
//                             color: Colors.white.withOpacity(0.3),
//                           )
//                       ),
//
//                     ),
//                   )
//                 ],
//
//               ),
//
//             ),
//           ),
//           Expanded(
//             child: Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//
//                 children: [
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(
//                         width:10,
//                       ),
//                       Container(
//                         width: 8,
//                         height: 8,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xffDFE8F5),
//                         ),
//
//                       ),
//                       SizedBox(
//                         width:2,
//                       ),
//                       Container(
//                         width: 28,
//                         height: 8,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(8),
//
//                           color: Color(0xff00966C),
//                         ),
//
//                       ),
//                       SizedBox(
//                         width:2,
//                       ),
//                       Container(
//                         width: 8,
//                         height: 8,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Color(0xffDFE8F5),
//                         ),
//
//                       ),
//
//
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 12
//                     ),
//                     child: Text('Find Your\nPerfect Pet', style: TextStyle( fontFamily: 'Inter',fontWeight: FontWeight(800),fontSize: 30,color: Colors.black),),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 12
//                     ),
//                     child: Text('Discover thousands of pets from verified\nsellers across Pakistan. Your dream companion\nis just a tap away.', style: TextStyle( fontFamily: 'Inter',fontSize: 18,color: Color(0xff7A8FA8)),),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(30.0),
//                     child: TextButton(
//                       onPressed: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Husky()));
//                       },
//                       child: Container(
//                         child: Center(
//                             child:  Text('Next  > ',style: TextStyle(fontWeight: FontWeight(700), fontSize: 18, fontFamily: 'Inter' , color: Colors.white),)
//
//
//
//                         ),
//                         width: 337,
//                         height: 58,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(19),
//
//                           color: Color(0xff00966C),
//                         ),
//
//                       ),
//                     ),
//                   ),
//                 ],
//
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//
//               ),
//
//             ),
//
//           ),
//         ],
//       ),
//     );
//   }
// }
