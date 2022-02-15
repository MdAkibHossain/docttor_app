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
                  Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.30),
                                child: Text("Paid", style: TextStyle(fontSize: screenWidth*0.03,
                                    fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(height: screenWidth*0.01,),
                              Text("Javed Ahmad M/46", style: TextStyle(fontSize: screenWidth*0.06,
                                  fontWeight: FontWeight.bold)),

                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Container(
                            height: screenHeight*0.08,
                            child: Image(image: AssetImage("assets/images/men.png")),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenWidth*0.25),
                  Table(
                    columnWidths:  {
                      0: FlexColumnWidth(1),
                      1: FlexColumnWidth(2),
                      2: FlexColumnWidth(2),
                      3: FlexColumnWidth(2),
                    },
                    border: TableBorder.all(color: Colors.grey),
                    children: [
                      TableRow(
                          children: [
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('S.No.', style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold),),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Name', style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Frequency', style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold),),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Before/After Meal', style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                            )),
                          ]
                      ),
                      TableRow(
                          children: [
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Center(child: Text('01', style: TextStyle(fontSize: screenWidth*0.04),)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Calcium', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('T-D-S', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('After', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                          ]
                      ),
                      TableRow(
                          children: [
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Center(child: Text('02', style: TextStyle(fontSize: screenWidth*0.04),)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('PCM', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('TDS', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('After', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                          ]
                      ),
                      TableRow(
                          children: [
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Center(child: Text('03', style: TextStyle(fontSize: screenWidth*0.04),)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Iron', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('BD', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('After', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                          ]
                      ),
                      TableRow(
                          children: [
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Center(child: Text('04', style: TextStyle(fontSize: screenWidth*0.04),)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Pantrop', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('OD', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Before', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                          ]
                      ),

                    ],
                  ),

                  SizedBox(height: screenWidth*0.15),

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
                              padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
                                  bottom: screenWidth*0.02, right: screenWidth*0.05),
                              child: Text('Order Labs', style: TextStyle(fontSize: screenWidth*0.04,)),
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
                              child: Text('Yes', style: TextStyle(fontSize: screenWidth*0.04,color: Colors.black)),
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
                              child: Text('No', style: TextStyle(fontSize: screenWidth*0.04, color: Colors.black)),
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
