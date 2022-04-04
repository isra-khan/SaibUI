import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class UiDesign2 extends StatefulWidget {
  const UiDesign2({Key? key}) : super(key: key);

  @override
  State<UiDesign2> createState() => _UiDesign2State();
}

class _UiDesign2State extends State<UiDesign2> {

  @override
  Widget build(BuildContext context) {

    return
       Scaffold(
          resizeToAvoidBottomInset: false,
        body:
       SingleChildScrollView(
         child: Container(
            child:Stack(
              children: [
                Container(
                  width:MediaQuery. of(context). size.width,
                  height:MediaQuery. of(context). size.height*2,

                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/bg_landing.png"),
                        fit: BoxFit.cover,
                     ),
                  ),

                ),
                Positioned(
                  top:50,
                  left:5,
                  width:350.w,
                  height: MediaQuery. of(context). size.height,

                  child: Container(
                    decoration: const BoxDecoration(

                      image: DecorationImage(
                        image: AssetImage("images/map_dots.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),

           Positioned(
             top:50,
             left:2,
             width:MediaQuery.of(context).size.width,

             height:170.h,

             child: Container(




              decoration: const BoxDecoration(
               // color: Colors.green,
                    image: DecorationImage(

                      image: AssetImage("images/line.png"),


                    ),

              ),
              ),
           ),




                      Positioned(
                              top:74,
                              left:70,
                             width:70.w,
                             height:100.h,


                child: Container(


                                  decoration: const BoxDecoration(

                                    image: DecorationImage(
                                      image: AssetImage("images/ic_plane.png"),

                                    ),

                                  ),
                                ),
            ),


                Positioned(
                  top:120,
                  left:280,
                  width:50.w,
                  height:50.h,

                  child: Container(

                      decoration: BoxDecoration(

                          color: Colors.white,

                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50.r))

                      ),
                      child: Center(child: Text("AR",style: TextStyle(fontSize: 20.sp),)),
                  ),

                ),


                       Column(



                         children: [
                           Container(


                             margin:EdgeInsets.fromLTRB(10.w,200.h,0,0 ),
                             width:200.w,
                             height:60.h,
                             decoration: const BoxDecoration(

                               image: DecorationImage(
                                 image: AssetImage("images/logo_saib.png"),

                               ),

                             ),
                           ),

                            SizedBox(height: 30.h,),
                           Center(
                             child: Container(
                               margin:EdgeInsets.fromLTRB(50.w, 0,0,0),


                               width: 100.w,
                               height: 50.h,

                               child: Text(
                                 "Welcome",
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 15.sp,
                                 ),
                               ),
                             ),
                           ),

                           Center(
                             child: Container(
                               child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children:[

                                  Column(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                                        child: Container(
                                          width:40.w,
                                         height:40.h,

                                         decoration: const BoxDecoration(
                                          // color:Colors.red,
                                           image: DecorationImage(

                                             image: AssetImage("images/ic_aboutus.png"),
                                           ),
                                         ),
                                 ),
                                      ),
                                      Container(
                                      child:Text("About us",style: TextStyle(color: Colors.white,fontSize: 10.sp),),

                                        ),

                                    ],
                                  ),

                                  Column(
                                    children: [
                                      Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                                        child: Container(
                                          width:40.w,
                                          height:40.h,

                                          decoration: const BoxDecoration(
                                            //color:Colors.red,

                                            image: DecorationImage(

                                              image: AssetImage("images/ic_locator.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child:Text("ATM Locator",style: TextStyle(color: Colors.white,fontSize: 10.sp),),

                                      ),

                                    ],
                                  ),
                                 Column(
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                                        child: Container(
                                          width:40.w,
                                          height:40.h,

                                          decoration: const BoxDecoration(
                                           // color:Colors.red,
                                            image: DecorationImage(

                                              image: AssetImage("images/ic_phone.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child:Text("Contact Us",style: TextStyle(color: Colors.white,fontSize:12.sp),),

                                      ),

                                    ],
                                  )
                                      ],
                               ),
                             ),
                           ),
                            SizedBox(height:50),
                           Column(
                             children: [

                               ElevatedButton(


                                 child: const Text('Login',),
                                 style: ButtonStyle(
                                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                         RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(23.0.r),
                                             side: BorderSide(color: Colors.yellow),
                                         ),),
                                     backgroundColor: MaterialStateProperty.all(Colors.yellow),
                                       foregroundColor:MaterialStateProperty.all(Colors.black),
                                       padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(112,15,112,15)),
                                     textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20.sp))),
                                 onPressed: (){},
                               ),
                                      SizedBox(height: 10.h,),
                               ElevatedButton(


                                 child: const Text('Register'),
                                 style: ButtonStyle(
                                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                       RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(23.0.r),
                                         side: BorderSide(color: Colors.yellow),
                                       ),),
                                     backgroundColor: MaterialStateProperty.all(Colors.yellow),
                                     foregroundColor:MaterialStateProperty.all(Colors.black),
                                     padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(100,15,100,15)),
                                     textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20.sp))),
                                 onPressed: (){},
                               ),
                             ],
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


