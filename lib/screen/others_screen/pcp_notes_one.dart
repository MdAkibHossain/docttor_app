import 'package:design/screen/get_started.dart';
import 'package:design/screen/patient_datas/pcp_next_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/patient_details_service.dart';
import '../patient/patient_helper.dart';

class PcpNotesOne extends StatefulWidget {
  const PcpNotesOne({Key? key}) : super(key: key);

  @override
  _PcpNotesOneState createState() => _PcpNotesOneState();
}

class _PcpNotesOneState extends State<PcpNotesOne> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Consumer<PatientDetailsService>(
            builder: (context, provider, child) => Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Row(children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: allColor.backGroundColor),
                      onPressed: () {},
                      child: const Text("PCP Notes")),
                  const Spacer(),
                  SizedBox(
                      height: screenHeight * 0.07,
                      child: Image.asset("assets/images/k.jpeg"))
                ]),
                SizedBox(
                  height: screenWidth * 0.05,
                ),
                Row(children: [
                  Text("Javed Ahmad M/46",
                      style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold)),
                  const Spacer(),
                  SizedBox(
                    height: screenHeight * 0.08,
                    child:
                        const Image(image: AssetImage("assets/images/men.png")),
                  )
                ]),
                SizedBox(height: screenWidth * 0.05),
                Container(
                  color: const Color(0xffe2eaf5),
                  height: screenHeight * 0.06,
                  width: screenWidth,
                  child: Padding(
                    padding: EdgeInsets.all(screenWidth * 0.03),
                    child: Text("PCP Notes",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                        )),
                  ),
                ),

                SizedBox(height: screenWidth * 0.05),
                //Doctor list ================>
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.02),
                          spreadRadius: -2,
                          blurRadius: 13,
                          offset: const Offset(0, 9)),
                    ],
                  ),
                  child: Column(
                    children: [
                      //top grey bar
                      PatientHelper().topgreyBar("Doctor list"),

                      //informations row
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
                        child: Column(
                          children: [
                            for (int i = 0;
                                i <
                                    provider.patientDetails.data.prescription
                                        .data.length;
                                i++)
                              InkWell(
                                onTap: () {
                                  // provider
                                  //           .patientDetails
                                  //           .data
                                  //           .prescription
                                  //           .data[i]
                                  //           .id
                                },
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 17),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: .5,
                                          color: Colors.grey.withOpacity(.5)),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        provider.patientDetails.data
                                            .prescription.data[i].dname,
                                        style: TextStyle(
                                          color: allColor.blackTextColor,
                                          fontSize: 13,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios_outlined,
                                        size: 13,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: screenWidth * 0.05),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PcpNextPage()));
                  },
                  child: Container(
                      color: const Color(0xfff5f3c6),
                      height: screenHeight * 0.06,
                      width: screenWidth,
                      child: Padding(
                          padding: EdgeInsets.all(screenWidth * 0.03),
                          child: Text("Write Notes to PCP",
                              style: TextStyle(fontSize: screenWidth * 0.05)))),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(screenWidth * 0.10),
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
                        )))),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    primary: allColor.elevatedBtnColor),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PcpNextPage()));
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.05,
                      top: screenWidth * 0.02,
                      bottom: screenWidth * 0.02,
                      right: screenWidth * 0.05),
                  child: Text('Next',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                      )),
                )),
          ],
        ),
      ),
    ));
  }
}
