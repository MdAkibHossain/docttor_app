import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/lab_report.dart';
import 'package:flutter/material.dart';
class Provitional extends StatefulWidget {
  const Provitional({Key? key}) : super(key: key);

  @override
  _ProvitionalState createState() => _ProvitionalState();
}
List<String>abcdList=[
  "A",
  "B",
  "C",
];
String ? initVal;
class _ProvitionalState extends State<Provitional> {
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
                          child: Text("Provisional Diagnose")),
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

                  Container(
                    width: screenWidth,
                    height: screenHeight*0.10,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding:  EdgeInsets.all(screenWidth*0.03),
                      child: DropdownButton(
                        iconSize: 60,
                          hint: Text("Current medical diagnose \nwill appear here",
                              style: TextStyle(fontSize: screenWidth*0.05)),
                        items: abcdList.map(
                                (val) => DropdownMenuItem(
                                value: val,
                                child: Text(val,
                                  style: TextStyle(color: Colors.deepOrange),
                                )
                            )
                        ).toList(),

                        onChanged: (newVal){
                          setState(() {
                            initVal=newVal.toString();
                          });
                        },
                        value: initVal),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LabReport()));
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
