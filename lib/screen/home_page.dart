import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/medicine.dart';
import 'package:design/screen/others_screen/my_wallet.dart';
import 'package:design/screen/others_screen/profile.dart';
import 'package:design/screen/others_screen/schedules_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
         backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                  top: screenHeight*0.35,
                  left: screenWidth*0.07,
                  right: screenWidth*0.01,
                  child: Padding(
                    padding:  EdgeInsets.only(right: screenWidth*0.04),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffaee6e0),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      width: screenWidth,
                      height: screenHeight*0.12,
                    ),
                  )),
              Positioned(
                  top: screenHeight*0.35,
                  left: screenWidth*0.07,
                  right: screenWidth*0.05,
                  child: Padding(
                    padding:  EdgeInsets.only(right: screenWidth*0.03),
                    child: Container(
                      decoration: BoxDecoration(
                          color: allColor.stakContainerColor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      width: screenWidth,
                      height: screenHeight*0.12,
                      child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02),
                            child:
                            Text("4. Schedules", style: TextStyle(fontSize: screenWidth*0.05,
                                fontWeight: FontWeight.bold, color: allColor.simpleTextColor)),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: screenWidth*0.30),
                            child: Text("for today", style: TextStyle(fontSize: screenWidth*0.04,
                                color: allColor.simpleTextColor)),
                          ),
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  top: screenHeight*0.32,
                  left: screenWidth*0.12,
                  right: screenWidth*0.68,
                  child: Padding(
                      padding:  EdgeInsets.only(right: screenWidth*0.03),
                      child: Image.asset("assets/images/celendar.png")
                  )),

              Padding(
                  padding:  EdgeInsets.only(left: screenWidth*0.03, right: screenWidth*0.03, top: screenWidth*0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight*0.05,),
                      Row(
                        children: [
                          Text("1.Welcome", style: TextStyle(fontSize: screenWidth*0.04),),
                          Spacer(),
                          Padding(
                            padding:  EdgeInsets.only(right: screenWidth*0.02),
                            child:
                            Container(
                                height: screenHeight*0.07,
                                child:Image.asset("assets/images/k.jpeg")),
                          ),

                        ],
                      ),
                      SizedBox(height: screenHeight*0.01,),
                      Text("2.Dr.Mahmood", style: TextStyle(fontSize: screenWidth*0.05, fontWeight: FontWeight.bold)),
                      SizedBox(height: screenWidth*0.02),
                      Text("3. from Ahsania Mission Cancer Hospital!", style: TextStyle(fontSize: screenWidth*0.04)),

                      SizedBox(height: screenHeight*0.35),
                      Container(
                        width: screenWidth,
                        height: screenHeight*0.17,
                        decoration: BoxDecoration(
                            color: allColor.homebgColor,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child:
                        Padding(
                          padding:  EdgeInsets.only(left: screenHeight*0.01, right: screenHeight*0.01,
                          top: screenHeight*0.02, bottom: screenHeight*0.02),
                          child:
                          Row(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: screenHeight*0.08,
                                        child:
                                        InkWell(
                                            onTap: (){
                                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Schedules()));
                                            },
                                            child: Image.asset("assets/images/men.png")),
                                      ),
                                      SizedBox(height: screenHeight*0.01),
                                      Text("Patient List", style: TextStyle(fontSize: screenWidth*0.04,
                                          fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: screenHeight*0.08,
                                        child:
                                        InkWell(
                                            onTap: (){

                                            },
                                            child: Image.asset("assets/images/file.png")),
                                      ),
                                      SizedBox(height: screenHeight*0.01),
                                      Text("Visit Records", style: TextStyle(fontSize: screenWidth*0.04,
                                          fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: screenHeight*0.08,
                                        child:
                                        InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWallet()));
                                          },
                                            child: Image.asset("assets/images/tk.png")),
                                      ),
                                      SizedBox(height: screenHeight*0.01),
                                      Text("Account", style: TextStyle(fontSize: screenWidth*0.04,
                                          fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: screenHeight*0.08,
                                        child:
                                        InkWell(
                                            onTap: (){
                                               Navigator.push(context, MaterialPageRoute(builder: (context)=>Medicine()));
                                            },
                                            child: Image.asset("assets/images/medicine.png")),
                                      ),
                                      SizedBox(height: screenHeight*0.01),
                                      Text("Medicine", style: TextStyle(fontSize: screenWidth*0.04,
                                          fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight*0.10,),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05),
                        child: Container(
                          width: screenWidth,
                          height: screenHeight*0.05,
                          child: Row(
                            children: [
                              Container(
                                child:
                                InkWell(
                                    onTap: (){

                                    },
                                    child: Image.asset("assets/images/right.png")),
                              ),
                              Spacer(),
                              Container(
                                child:
                                InkWell(
                                    onTap: (){

                                    },
                                    child: Image.asset("assets/images/setting.png")),
                              ),

                              Spacer(),
                              Container(
                                child:
                                InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                                    },
                                    child: Image.asset("assets/images/profile.png")),
                              ),
                            ],
                          ),
                        ),
                      ),



                    ],
                  ),
                ),





            ],
          ),
        ),

      ),
    );
  }
}
