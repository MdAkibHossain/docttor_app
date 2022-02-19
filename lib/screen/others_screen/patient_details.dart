import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/prescription_formate.dart';
import 'package:flutter/material.dart';
class PatientDetails extends StatefulWidget {
  const PatientDetails({Key? key}) : super(key: key);

  @override
  _PatientDetailsState createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight*0.05),
                Padding(
                  padding:  EdgeInsets.all(screenHeight*0.02),
                  child: Row(
                    children: [
                      SizedBox(height: screenHeight*0.10),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.03),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: allColor.backGroundColor),
                            onPressed: (){},
                            child: Text("Patient Details", style: TextStyle(fontSize: screenWidth*0.05),))),
                      Spacer(),
                      Container(
                          height: screenHeight*0.07,
                          child:Image.asset("assets/images/k.jpeg"))])),
                SizedBox(height: screenHeight*0.02),
                Padding(
                  padding:  EdgeInsets.only(right: screenWidth*0.25),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Reason :", style: TextStyle(
                            fontSize: screenWidth*0.06, fontWeight: FontWeight.bold))),
                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Chest pain", style: TextStyle(
                            fontSize: screenWidth*0.05, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenWidth*0.01),
                Padding(
                  padding:  EdgeInsets.only(right: screenWidth*0.25),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Gender :", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Male", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenWidth*0.01),
                Padding(
                  padding:  EdgeInsets.only(right: screenWidth*0.25),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Name :", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Deepak", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenWidth*0.01),
                Padding(
                  padding:  EdgeInsets.only(right: screenWidth*0.25),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Age :", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("51", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenWidth*0.01),
                Padding(
                  padding:  EdgeInsets.only(right: screenWidth*0.25),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Date :", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("August 25, 2021", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenWidth*0.01),
                Padding(
                  padding:  EdgeInsets.only(right: screenWidth*0.25),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("Time :", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                      Spacer(),
                      Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05),
                        child:
                        Text("10:50 AM", style: TextStyle(
                            fontSize: screenWidth*0.04)),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          bottomNavigationBar:
          Row(children: [
            Padding(
              padding:  EdgeInsets.all(25),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: Colors.blue),
                  onPressed: (){Navigator.pop(context);},
                  child: Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
                          bottom: screenWidth*0.02, right: screenWidth*0.05),
                      child: Text('Back', style: TextStyle(fontSize: screenWidth*0.04,))))),
            Spacer(),
            Padding(
                padding:  EdgeInsets.all(25),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: allColor.elevatedBtnColor),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Prescription()));},
                    child: Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.02, top: screenWidth*0.02,
                            bottom: screenWidth*0.02, right: screenWidth*0.02),
                        child: Text('My Prescription', style: TextStyle(fontSize: screenWidth*0.04,))))),
          ],)
        )
    );
  }
}
