import 'package:design/screen/get_started.dart';
import 'package:design/screen/patient/patient_details.dart';
import 'package:design/screen/patient_datas/pcp_notes_one.dart';
import 'package:design/screen/others_screen/view_patient_details.dart';
import 'package:flutter/material.dart';

class PatientList extends StatefulWidget {
  const PatientList({Key? key}) : super(key: key);

  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenWidth,
              height: screenHeight * 0.50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.07), BlendMode.dstATop),
                      image: const AssetImage("assets/images/clock.png"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.all(screenHeight * 0.02),
                    child: Row(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.10,
                          child: const Image(
                              image: AssetImage("assets/images/men.png")),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.02),
                          child: Text("Dr.Mahmood",
                              style: TextStyle(
                                  fontSize: screenWidth * 0.06,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const Spacer(),
                        SizedBox(
                            height: screenHeight * 0.07,
                            child: Image.asset("assets/images/k.jpeg")),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                            width: screenWidth,
                            child: Column(children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: screenWidth * 0.05),
                                  child: Text("Schedule 10 Oct 2021",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.06,
                                          fontWeight: FontWeight.bold))),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Center(
                                  child: Text("10 Patient(S)",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54)))
                            ])),
                        SizedBox(
                            width: screenWidth,
                            child: Column(children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: screenWidth * 0.05),
                                  child: Text("Schedule 11 Oct 2021",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.06,
                                          fontWeight: FontWeight.bold))),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Center(
                                  child: Text("5 Patient(S)",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54)))
                            ])),
                        SizedBox(
                            width: screenWidth,
                            child: Column(children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: screenWidth * 0.05),
                                  child: Text("Schedule 12 Oct 2021",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.06,
                                          fontWeight: FontWeight.bold))),
                              SizedBox(
                                height: screenHeight * 0.02,
                              ),
                              Center(
                                  child: Text("15 Patient(S)",
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54)))
                            ])),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PatientDetails()));
                                },
                                child: Container(
                                  height: screenHeight * 0.08,
                                  width: screenWidth * 0.20,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(360)),
                                  child: Image.asset("assets/images/men.png"),
                                ),
                              ),
                              SizedBox(height: screenHeight * 0.01),
                              Text(
                                  "Jabed\n"
                                  "Ahmad",
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.03,
                                      fontWeight: FontWeight.bold)),
                            ],
                          );
                        }),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: allColor.backGroundColor),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ViewPatientDetails()));
                  },
                  child: const Text("View All Patient Details")),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.05, right: screenWidth * 0.05),
              child: SizedBox(
                width: screenWidth,
                height: screenHeight * 0.05,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: Image.asset("assets/images/right.png")),
                    const Spacer(),
                    InkWell(
                        onTap: () {},
                        child: Image.asset("assets/images/setting.png")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
