import 'package:design/screen/get_started.dart';
import 'package:flutter/material.dart';

class OrderLabsTwo extends StatefulWidget {
  const OrderLabsTwo({Key? key}) : super(key: key);

  @override
  _OrderLabsTwoState createState() => _OrderLabsTwoState();
}

class _OrderLabsTwoState extends State<OrderLabsTwo> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: Text("Order Labs")),
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
                  SizedBox(height: screenWidth*0.15),
                  Padding(
                    padding:  EdgeInsets.all(screenWidth*0.03),
                    child:
                    Text("Complaint"
                        , style: TextStyle(fontSize: screenWidth*0.05,
                        )),
                  ),
                  Container(
                    // color: Color(0xffff7e11),
                    // height: screenHeight*0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)
                    ),
                    width: screenWidth,
                    child:
                    Padding(
                      padding:  EdgeInsets.all(screenWidth*0.03),
                      child:
                      Text("Chest pain since last 6 month"
                          , style: TextStyle(fontSize: screenWidth*0.05,
                          )),
                    ),
                  ),
                  SizedBox(height: screenWidth*0.15),
                  Container(
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Color(0xffe8e8e8),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(screenWidth*0.02),
                          child: Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: allColor.backGroundColor
                                  ),
                                  onPressed: (){
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                                  },
                                  child:
                                  Text('Add Medicine')
                              ),
                              SizedBox(width: screenWidth*0.05,),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.yellow
                                  ),
                                  onPressed: (){
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                                  },
                                  child:
                                  Text('Lab Report', style: TextStyle(color: Colors.black))
                              ),

                            ],
                          ),
                        ),
                        Table(
                          columnWidths:  {
                            0: FlexColumnWidth(1),
                            1: FlexColumnWidth(3),
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
                                  child: Text('USG lower Abdomen', style: TextStyle(fontSize: screenWidth*0.04)),
                                )),
                              ]
                            ),
                            TableRow(
                              children: [
                                TableCell(child:
                                Padding(
                                  padding:  EdgeInsets.all(screenWidth*0.02),
                                  child: Center(child: Text('02', style: TextStyle(fontSize: screenWidth*0.04,),)),
                                )),
                                TableCell(child:
                                Padding(
                                  padding:  EdgeInsets.all(screenWidth*0.02),
                                  child: Text('Chest X-ray', style: TextStyle(fontSize: screenWidth*0.04)),
                                )),
                              ]
                            ),
                          ],
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
                Container(
                  height: screenHeight*0.05,
                  child:
                  InkWell(
                      onTap: (){

                      },
                      child: Image.asset("assets/images/right.png")),
                ),
                Spacer(),
                Container(
                  height: screenHeight*0.05,
                  child:
                  InkWell(
                      onTap: (){

                      },
                      child: Image.asset("assets/images/setting.png")),
                ),
              ],
            ),
          ),
        )
    );
  }
}
