import 'package:cached_network_image/cached_network_image.dart';
import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/medical_history.dart';
import 'package:design/screen/patient/patient_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/patient_details_service.dart';

class ReviewVitals extends StatefulWidget {
  const ReviewVitals({Key? key}) : super(key: key);

  @override
  _ReviewVitalsState createState() => _ReviewVitalsState();
}

class _ReviewVitalsState extends State<ReviewVitals> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
        child: SingleChildScrollView(
          child: Consumer<PatientDetailsService>(
            builder: (context, provider, child) => Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: allColor.backGroundColor),
                        onPressed: () {},
                        child: const Text("Review Vitals")),
                    const Spacer(),
                    SizedBox(
                        height: screenHeight * 0.07,
                        child: Image.asset("assets/images/k.jpeg")),
                  ],
                ),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                //User name and profile image
                PatientHelper().nameAndImage(),
                SizedBox(height: screenWidth * 0.05),
                Container(
                  color: const Color(0xffff7e11),
                  height: screenHeight * 0.06,
                  width: screenWidth,
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.03),
                    child: Text("Vital Report",
                        style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                SizedBox(height: screenWidth * 0.05),
                Container(
                    decoration: BoxDecoration(
                        // color: Color(0xffdcebf1),
                        borderRadius: BorderRadius.circular(10)),
                    width: screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        for (int i = 0;
                            i < provider.patientDetails.data.vitalReport.length;
                            i++)
                          Container(
                            margin: const EdgeInsets.only(bottom: 7),
                            child: Text(
                                "${provider.patientDetails.data.vitalReport[i].title} - ${provider.patientDetails.data.vitalReport[i].findings}",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                )),
                          ),
                      ],
                    )),
                const SizedBox(height: 27),
                InkWell(
                  onTap: () {},
                  child: Container(
                    color: const Color(0xffff7e11),
                    height: screenHeight * 0.06,
                    width: screenWidth,
                    child: Padding(
                      padding: EdgeInsets.all(screenWidth * 0.03),
                      child: Text("Old Vital History",
                          style: TextStyle(
                              fontSize: screenWidth * 0.05,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: Colors.blue),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.05,
                      top: screenWidth * 0.02,
                      bottom: screenWidth * 0.02,
                      right: screenWidth * 0.05),
                  child: Text('Back',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                      )),
                )),
            // Spacer(),
            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //         shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(30)
            //         ),
            //         primary: allColor.elevatedBtnColor
            //     ),
            //     onPressed: (){
            //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Medical()));
            //     },
            //     child:
            //     Padding(
            //       padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
            //           bottom: screenWidth*0.02, right: screenWidth*0.05),
            //       child: Text('Next', style: TextStyle(fontSize: screenWidth*0.04,)),
            //     )
            // ),
          ],
        ),
      ),
    ));
  }
}
