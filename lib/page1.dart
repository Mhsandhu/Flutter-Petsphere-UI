import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:petsphere/dogs.dart';
import 'package:petsphere/husky.dart';
import 'package:petsphere/login-page.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xff00966C),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.2, -1.0),
            end: Alignment(0.2, 1.0),
            colors: [Color(0xff00966C), Color(0xff007755), Color(0xff004D3A)],
            stops: [
              0.0, // 0%
              0.6, // 60%
              1.0, // 100%
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -95,
              left: 159,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.06),
                    shape: BoxShape.circle,
                  ),
                )),

            Positioned(
                top: 140,
                left: 253,
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.06),
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                top: 584,
                left: -83,
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.06),
                    shape: BoxShape.circle,
                  ),
                )),
            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                ),

                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff279575),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff000000).withOpacity(0.15),
                            blurRadius: 32.0,
                            spreadRadius: 0,
                          )
                        ]
                    ),
                    child: Center(
                      child: SvgPicture.asset('icons/pet.svg'),
                    ),

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(text: TextSpan(

                    text: 'Pet',
                    style: TextStyle(
                      fontWeight:FontWeight(800),
                      fontSize: 36,
                      fontFamily: 'Inter',

                    ),
                    children: [
                      TextSpan(
                        text: 'Sphere',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.75),
                          fontWeight:FontWeight(800),
                          fontSize: 36,
                          fontFamily: 'Inter',

                        ),
                      )
                    ]

                ),


                ),
                SizedBox(
                  height: 10,

                ),
                Text('FIND • LOVE • ADOPT',style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight(400),
                    fontSize: 25,
                    color: Color(0xffFFFFFF).withOpacity(0.75)
                ),),
                SizedBox(
                  height: 140,
                ),
                Column(

                  children: [
                    Container(
                      height: 36,
                      width: 36,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFF).withOpacity(0.0),
                          shape: BoxShape.circle,
                          border: BoxBorder.all(
                            color: Color(0xffFFFFFF)..withOpacity(0.4),
                          )
                      ),
                      child: Center(child:
                      IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Dogs()));
                      },
                          icon: Icon(Icons.expand_less,color: Color(0xffFFFFFF)..withOpacity(0.4),size: 20,)),
                      ),
                    ),

                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Dogs()));
                        },

                        child: Center(child: Text('Tap to Continue',style: TextStyle(fontSize: 13,color: Colors.white.withOpacity(0.6)),))),

                  ],
                ),


              ],

            ),



          ],



        ),
      ),
    );
  }
}
