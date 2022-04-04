import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen2/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

        builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,


        home: UiDesign(),
        ),
      designSize: const Size(360,640),
    );
  }
}

class UiDesign extends StatefulWidget {
  const UiDesign({Key? key}) : super(key: key);

  @override
  State<UiDesign> createState() => _UiDesignState();
}
class _UiDesignState extends State<UiDesign> {

  bool _obscuretext=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      resizeToAvoidBottomInset: false,
      body:
      SingleChildScrollView(
        child: Container(
          child:Stack(
            children: [
              Container(
                width: MediaQuery. of(context).size.width,
                height:MediaQuery. of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/bg_landing.png"),
                      fit: BoxFit.cover),
                ),

              ),
              Positioned(
                top:50,
                left:5,
                width:350.w,
                height: MediaQuery. of(context). size.height,

                child: Container(
                  decoration: const BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage("images/map_dots.png"),
                    ),

                  ),
                ),
              ),

              Positioned(
                top:30,
                left:0,
                width:MediaQuery. of(context). size.width,
                height: MediaQuery.of(context).size.height*0.2,

                child: Container(



                  decoration: const BoxDecoration(


                    image: DecorationImage(
                      image: AssetImage("images/line.png"),
                    ),

                  ),
                ),
              ),


              Positioned(
                top:45,
                left:90,
                width:70.w,
                height:70.h,

                child: Container(

                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/ic_plane.png"),
                    ),

                  ),
                ),
              ),


              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 125, 0, 0),

                      child: Container(

                        width:230.w,
                        height:70.h,
                        decoration: const BoxDecoration(
                          // color:Colors.red,
                          image: DecorationImage(

                            image: AssetImage("images/logo_saib.png"),
                          ),
                        ),
                      ),
                    ),
                  ),



                  Center(
                    child: SizedBox(
                      width:250.w,
                      child:TextField(

                        style: TextStyle(fontSize: 15.sp),
                        decoration: InputDecoration(
                          hintText: "User Name",
                          hintStyle: TextStyle(fontSize: 15.0.sp, color: Colors.grey,fontWeight: FontWeight.bold),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),


                      ),
                    ),
                  ),

                  SizedBox(height: 25,),


                  Center(

                    child:SizedBox(
                      width:250.w,
                     child:   TextFormField(
                       obscureText:_obscuretext,
                          decoration: InputDecoration(

                            hintText: ' password',
                            hintStyle: TextStyle(fontSize: 15.0.sp, color: Colors.grey,fontWeight: FontWeight.bold),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                           /* color:Colors.grey,*/

                            suffixIcon: GestureDetector(
                                      onTap:(){
                            setState(()=>_obscuretext = !_obscuretext);
                            },
                              child:Icon(

                                _obscuretext ? Icons.visibility : Icons.visibility_off,
                                color: Colors.grey,
                              ),

                              ),


                            ),
                          ),
                        ),
                    ),








                  SizedBox(height: 20,),


                  Row(

                    children: [
                      Container(
                        width:20,
                        height:20,
                        margin:  EdgeInsets.only(left: 60.0
                            , right: 30.0),

                        decoration: BoxDecoration(


                          border: Border.all(
                            color: Colors.white,

                          ),
                        ),
                      ),
                      SizedBox(width:10,),
                      Container(
                        child:Text("Remember Me"
                          ,style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400),),
                      ),


                    ],
                  ),
                  SizedBox(height:30),
                  ElevatedButton(

                    child: const Text('Login'),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.0.r),
                            side: BorderSide(color: Colors.yellow),
                          ),),
                        backgroundColor: MaterialStateProperty.all(Colors.yellow),
                        foregroundColor:MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(120,10,120,15)),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20.sp))),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return UiDesign2();}));
                    },
                  ),
                  SizedBox(height:20,),
                  Text(
                    'Forget Password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color:Colors.grey,
                      fontSize:20.sp,
                    ),
                  ),
                  SizedBox(height:20),
                  Center(

                    child: Row(

                      children: [

                        Wrap(

                          children:[

                            Padding(
                              padding:  EdgeInsets.fromLTRB(70,0,4,0),
                              child: Text(

                                'Dont have an account',
                                style: TextStyle(

                                  color:Colors.grey,
                                  fontSize:19.sp,
                                ),
                              ),
                            ),

                            Text(
                              'Register',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color:Colors.grey,
                                fontSize:19.sp,
                              ),

                            ),




                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10),
                  Center(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:[


                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width:30.w,
                              height:30.h,

                              decoration: const BoxDecoration(
                                // color:Colors.red,
                                image: DecorationImage(

                                  image: AssetImage("images/ic_aboutus.png"),
                                ),
                              ),
                            ),
                          ),






                          Padding(
                            padding:  EdgeInsets.all(10.0),
                            child: Container(
                              width:30.w,
                              height:30.h,

                              decoration: const BoxDecoration(
                                //color:Colors.red,

                                image: DecorationImage(

                                  image: AssetImage("images/ic_locator.png"),
                                ),
                              ),
                            ),
                          ),



                          Padding(
                            padding:  EdgeInsets.all(10.0),
                            child: Container(
                              width:30.w,
                              height:30.h,

                              decoration: const BoxDecoration(
                                // color:Colors.red,
                                image: DecorationImage(

                                  image: AssetImage("images/ic_phone.png"),
                                ),
                              ),
                            ),
                          ),



                        ],
                      ),
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



