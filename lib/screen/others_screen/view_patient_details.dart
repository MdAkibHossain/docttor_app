import 'package:design/screen/get_started.dart';
import 'package:flutter/material.dart';

class ViewPatientDetails extends StatefulWidget {
  const ViewPatientDetails({Key? key}) : super(key: key);

  @override
  _ViewPatientDetailsState createState() => _ViewPatientDetailsState();
}

class _ViewPatientDetailsState extends State<ViewPatientDetails> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screenWidth,
                  height: screenHeight*0.42,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter:  ColorFilter.mode(Colors.grey.withOpacity(0.07), BlendMode.dstATop),
                          image: AssetImage("assets/images/clock.png"), fit: BoxFit.cover)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight*0.02,),
                      Padding(
                        padding:  EdgeInsets.all(screenHeight*0.02),
                        child: Row(
                          children: [
                            Container(
                              height: screenHeight*0.10,
                              child: Image(image: AssetImage("assets/images/men.png")),
                            ),

                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth*0.02),
                              child: Text("Dr.Mahmood", style: TextStyle(fontSize: screenWidth*0.06,
                                  fontWeight: FontWeight.bold)),
                            ),
                            Spacer(),
                            Container(
                                height: screenHeight*0.07,
                                child:Image.asset("assets/images/k.jpeg")),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Schedule 10 Oct 2021", style: TextStyle(
                            fontSize: screenWidth*0.06, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: screenHeight*0.02,),
                      Center(
                        child:
                        Text("10 Patient(S)", style: TextStyle(
                            fontSize: screenWidth*0.05, fontWeight: FontWeight.bold, color: Colors.black54),
                        ),
                      ),
                      SizedBox(height: screenHeight*0.04,),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 20,
                            itemBuilder: (index, context){
                              return
                                Column(
                                  children: [
                                    Container(
                                      height: screenHeight*0.08,
                                      width: screenWidth*0.20,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(360)
                                      ),
                                      child: Image.asset("assets/images/men.png"),
                                    ),
                                    SizedBox(height: screenHeight*0.01),
                                    Text("Jabed\n"
                                        "Ahmad", style: TextStyle(
                                        fontSize: screenWidth*0.03, fontWeight: FontWeight.bold)),

                                  ],
                                );

                            }
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight*0.02),
                Padding(
                  padding:  EdgeInsets.only(right: screenWidth*0.07),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: (){},
                          child: Icon(Icons.menu_outlined, size: 39,)),
                      SizedBox(width: screenHeight*0.02),
                      InkWell(
                          onTap: (){},
                          child: Icon(Icons.grid_view, size: 35,)),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight*0.02),
                Padding(
                  padding:  EdgeInsets.all(screenWidth*0.02),
                  child:
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
                              child: Text('S.No', style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold),),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Name', style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Gender/Age', style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold),),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Reason', style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
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
                              child: Text('Deepak', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('M/23', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Chest Paint', style: TextStyle(fontSize: screenWidth*0.04)),
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
                              child: Text('Shoeb', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('M/68 ', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Stomach Pain', style: TextStyle(fontSize: screenWidth*0.04)),
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
                              child: Text('Usman ', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('M/43 ', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Cold', style: TextStyle(fontSize: screenWidth*0.04)),
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
                              child: Text('Fatima ', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('M/23', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                            TableCell(child:
                            Padding(
                              padding:  EdgeInsets.all(screenWidth*0.02),
                              child: Text('Migraine', style: TextStyle(fontSize: screenWidth*0.04)),
                            )),
                          ]
                      ),

                    ],
                  )),
                Padding(
                  padding:  EdgeInsets.all(screenWidth*0.05),
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: allColor.backGroundColor),
                          onPressed: (){},
                          child: Text("View Details")),
                      Spacer()])),
                Padding(
                  padding:  EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05),
                  child: Container(
                    width: screenWidth,
                    height: screenHeight*0.05,
                    child:
                    Row(
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
