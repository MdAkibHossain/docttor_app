import 'package:design/screen/get_started.dart';
import 'package:design/screen/home_page.dart';
import 'package:flutter/material.dart';
class Prescription extends StatefulWidget {
  const Prescription({Key? key}) : super(key: key);

  @override
  _PrescriptionState createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
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
                      Text("KAMBAII", style: TextStyle(fontSize: screenWidth*0.07, fontWeight: FontWeight.bold,
                          color: Colors.blueGrey)),
                      Spacer(),
                      Container(
                          height: screenHeight*0.07,
                          child:Image.asset("assets/images/k.jpeg")),
                    ],
                  ),
                  SizedBox(height: screenWidth*0.05,),
                  Text("Dr.Mahmood", style: TextStyle(fontSize: screenWidth*0.06,
                      fontWeight: FontWeight.bold)),
                  Text("from Ahsania Mission Cancer Hospital!", style: TextStyle(fontSize: screenWidth*0.04)),
                  SizedBox(height: screenWidth*0.05,),
                  Divider(color: Colors.grey,thickness: 2,),
                  SizedBox(height: screenWidth*0.05),
                  Container(
                    height: screenHeight*0.05,
                      color: Color(0xffdcebf1),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(children: [
                            Text("Patient Name : ", style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),
                            Text("Deepak", style: TextStyle(fontSize: screenWidth*0.04,fontWeight: FontWeight.bold))]))),
                  Container(
                      height: screenHeight*0.05,
                      color: allColor.homebgColor,
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(children: [
                            Text("Reason : ", style: TextStyle(fontSize: screenWidth*0.04)),
                            Text("Chest pain", style: TextStyle(fontSize: screenWidth*0.04))]))),
                  Container(
                      height: screenHeight*0.05,
                      color: Color(0xffdcebf1),
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(children: [
                            Text("Gender : ", style: TextStyle(fontSize: screenWidth*0.04)),
                            Text("Male", style: TextStyle(fontSize: screenWidth*0.04))]))),
                  Container(
                      height: screenHeight*0.05,
                      color: allColor.homebgColor,
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(children: [
                            Text("Age : ", style: TextStyle(fontSize: screenWidth*0.04)),
                            Text("21 Years", style: TextStyle(fontSize: screenWidth*0.04))]))),

                  SizedBox(height: screenWidth*0.10),
                  Container(
                    height: screenHeight*0.15,
                    width: screenWidth,
                    color: allColor.homebgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Patient Complaint", style: TextStyle(fontSize: screenWidth*0.04)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenWidth*0.05),
                  Container(
                    height: screenHeight*0.15,
                    width: screenWidth,
                    color: Color(0xffdcebf1),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Specialist Assessment ", style: TextStyle(fontSize: screenWidth*0.04)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenWidth*0.10),
                  Container(
                    height: screenHeight*0.15,
                    width: screenWidth,
                    color: allColor.homebgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Provisional Diagnosis", style: TextStyle(fontSize: screenWidth*0.04)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenWidth*0.05),
                  Container(
                    height: screenHeight*0.15,
                    width: screenWidth,
                    color: Color(0xffdcebf1),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Order Lab", style: TextStyle(fontSize: screenWidth*0.04)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenWidth*0.10),
                  Container(
                    height: screenHeight*0.15,
                    width: screenWidth,
                    color: allColor.homebgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(" Old Continued Medicine", style: TextStyle(fontSize: screenWidth*0.04)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenWidth*0.05),
                  Container(
                    height: screenHeight*0.15,
                    width: screenWidth,
                    color: Color(0xffdcebf1),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("New Medicine", style: TextStyle(fontSize: screenWidth*0.04)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: screenWidth*0.10),
                  Container(
                      height: screenHeight*0.05,
                      color: Color(0xfffae5dd),
                      child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(children: [
                            Text("Medicine Name", style: TextStyle(fontSize: screenWidth*0.04)),
                            Spacer(),
                            Text("Strength", style: TextStyle(fontSize: screenWidth*0.04)),
                            Spacer(),
                            Text("Time", style: TextStyle(fontSize: screenWidth*0.04)),
                            Spacer(),
                            Text("Meal", style: TextStyle(fontSize: screenWidth*0.04)),
                            Spacer(),
                            Text("Days", style: TextStyle(fontSize: screenWidth*0.04))]))),
                  SizedBox(height: screenWidth*0.05),
                  Container(
                    width: screenWidth,
                    color: allColor.homebgColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: "Advice"
                        ),
                      )
                    ),
                  ),


                  SizedBox(height: screenWidth*0.15),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding:  EdgeInsets.only(left: screenWidth*0.10, right: screenWidth*0.10,
                top: screenWidth*0.02, bottom: screenWidth*0.05),
            child: Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: Colors.blue),
                    onPressed: (){Navigator.pop(context);},
                    child:
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05,bottom: screenWidth*0.02, right: screenWidth*0.05),
                      child: Text('Back', style: TextStyle(fontSize: screenWidth*0.04)))),
                Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: allColor.elevatedBtnColor),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
                    child:
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
                          bottom: screenWidth*0.02, right: screenWidth*0.05),
                      child: Text('Submit Button', style: TextStyle(fontSize: screenWidth*0.04,)),
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}
