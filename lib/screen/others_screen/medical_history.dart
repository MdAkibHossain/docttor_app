import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/provisional.dart';
import 'package:flutter/material.dart';

class Medical extends StatefulWidget {
  const Medical({Key? key}) : super(key: key);

  @override
  _MedicalState createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
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
                              primary: allColor.backGroundColor),
                          onPressed: (){},
                          child: Text("Medical History")),
                      Spacer(),
                      Container(
                          height: screenHeight*0.07,
                          child:Image.asset("assets/images/k.jpeg"))]),
                  SizedBox(height: screenWidth*0.05,),
                  Row(children: [
                    Text("Javed Ahmad M/46", style: TextStyle(fontSize: screenWidth*0.06,
                        fontWeight: FontWeight.bold)),
                    Spacer(),
                    Container(
                      height: screenHeight*0.08,
                      child: Image(image: AssetImage("assets/images/men.png")),
                    )]),
                  SizedBox(height: screenWidth*0.05),
                  Container(
                    color: Color(0xffff7e11),
                    height: screenHeight*0.06,
                    width: screenWidth,
                    child: Padding(
                      padding:  EdgeInsets.all(screenWidth*0.03),
                      child: Text("Medical History 2022", style: TextStyle(fontSize: screenWidth*0.05,
                          color: Colors.white, fontWeight: FontWeight.bold)))),
                  SizedBox(height: screenWidth*0.05),
                  Container(
                      decoration: BoxDecoration(
                          color: Color(0xffdcebf1),
                          borderRadius: BorderRadius.circular(10)),
                      width: screenWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:  EdgeInsets.all(screenWidth*0.05),
                            child: Text("Medical History", style: TextStyle(fontSize: screenWidth*0.05,)),
                          ),
                          SizedBox(height: screenWidth*0.10)])),
                  SizedBox(height: screenWidth*0.45),

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

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Provitional()));
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