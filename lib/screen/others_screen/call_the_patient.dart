import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/add_new_medicine.dart';
import 'package:flutter/material.dart';

class CallThePatient extends StatefulWidget {
  const CallThePatient({Key? key}) : super(key: key);

  @override
  _CallThePatientState createState() => _CallThePatientState();
}

class _CallThePatientState extends State<CallThePatient> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body:
          Padding(
            padding:  EdgeInsets.all(screenWidth*0.05),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight*0.02,),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: allColor.backGroundColor
                          ),
                          onPressed: (){

                          },
                          child: Text("Call the Patient")),
                      Spacer(),
                      Container(
                          height: screenHeight*0.07,
                          child:Image.asset("assets/images/k.jpeg")),
                    ],
                  ),
                  SizedBox(height: screenWidth*0.05,),
                  Row(children: [
                    Text("Javed Ahmad M/46", style: TextStyle(fontSize: screenWidth*0.06,
                        fontWeight: FontWeight.bold)),
                    Spacer(),
                    Container(
                      height: screenHeight*0.08,
                      child: Image(image: AssetImage("assets/images/men.png")),
                    )]),
                  SizedBox(height: screenHeight*0.35),

                  Padding(
                    padding:  EdgeInsets.all(screenWidth*0.02),
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                primary: allColor.backGroundColor
                            ),
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                            },
                            child:
                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth*0.01, top: screenWidth*0.02,
                                  bottom: screenWidth*0.02, right: screenWidth*0.01),
                              child: Text('Call the Patient', style: TextStyle(fontSize: screenWidth*0.04,)),
                            )
                        ),
                        Spacer(),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                primary: Color(0xffb3d9ef)
                            ),
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                            },
                            child:
                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth*0.02, top: screenWidth*0.02,
                                  bottom: screenWidth*0.02, right: screenWidth*0.02),
                              child: Icon(Icons.call, color: Colors.black),
                            )
                        ),
                        Spacer(),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                primary: Color(0xfffae5dd)
                            ),
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                            },
                            child:
                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth*0.02, top: screenWidth*0.02,
                                  bottom: screenWidth*0.02, right: screenWidth*0.02),
                              child: Icon(Icons.video_call, color: Colors.black,),
                            )
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding:  EdgeInsets.all(screenWidth*0.10),
            child: Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        primary: Colors.blue
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child:
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
                          bottom: screenWidth*0.02, right: screenWidth*0.05),
                      child: Text('Back', style: TextStyle(fontSize: screenWidth*0.04,)),
                    )
                ),
                Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        primary: allColor.elevatedBtnColor
                    ),
                    onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewMedicine()));
                    },
                    child:
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
                          bottom: screenWidth*0.02, right: screenWidth*0.05),
                      child: Text('Next', style: TextStyle(fontSize: screenWidth*0.04,)),
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}
