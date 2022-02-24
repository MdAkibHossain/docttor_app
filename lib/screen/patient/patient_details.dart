import 'package:cached_network_image/cached_network_image.dart';
import 'package:design/helper/common_helper.dart';
import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/prescription_formate.dart';
import 'package:design/screen/patient/patient_helper.dart';
import 'package:flutter/material.dart';

import '../others_screen/pcp_notes_one.dart';

class PatientDetails extends StatefulWidget {
  const PatientDetails({Key? key}) : super(key: key);

  @override
  _PatientDetailsState createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: CommonHelper().appbarSimple(''),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // PatientHelper().profileCard(),
                    //primary info card
                    Container(
                      margin: const EdgeInsets.only(top: 10),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              //profile image
                              SizedBox(
                                width: 65,
                                height: 65,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        'https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__340.jpg',
                                    placeholder: (context, url) {
                                      return Image.asset(
                                          'assets/images/placeholder.png');
                                    },
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    height: 65,
                                    width: 65,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                "S.M. Saleheen",
                                style: TextStyle(
                                    color: allColor.blackTextColor,
                                    fontSize: 19),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              //username
                              Text(
                                "01625683832",
                                style: TextStyle(
                                  color: allColor.blackTextColor,
                                  fontSize: 12,
                                ),
                              ),
                              Divider(
                                thickness: .5,
                                height: 45,
                                color: Colors.grey.withOpacity(.7),
                              )
                            ],
                          ),

                          //informations row
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                            child: Column(
                              children: [
                                PatientHelper()
                                    .infoSingleRow("Name:", "S.M. Saleheen"),
                                PatientHelper().infoSingleRow(
                                    "Contact Number:", "014567776655"),
                                PatientHelper()
                                    .infoSingleRow("Gender:", "Male"),
                                PatientHelper().infoSingleRow(
                                    "Date of birth:", "12/04/1982")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),

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
                                for (int i = 0; i < 5; i++)
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 17),
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
                                          "Dr.Iqbal Hossain",
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
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    // Padding(
                    //     padding: EdgeInsets.all(screenHeight * 0.02),
                    //     child: Row(children: [
                    //       SizedBox(height: screenHeight * 0.10),
                    //       Padding(
                    //           padding: EdgeInsets.only(left: screenWidth * 0.03),
                    //           child: ElevatedButton(
                    //               style: ElevatedButton.styleFrom(
                    //                   primary: allColor.backGroundColor),
                    //               onPressed: () {},
                    //               child: Text(
                    //                 "Patient Details",
                    //                 style:
                    //                     TextStyle(fontSize: screenWidth * 0.05),
                    //               ))),
                    //       const Spacer(),
                    //       SizedBox(
                    //           height: screenHeight * 0.07,
                    //           child: Image.asset("assets/images/k.jpeg"))
                    //     ])),
                    // SizedBox(height: screenHeight*0.02),
                    // Padding(
                    //   padding:  EdgeInsets.only(right: screenWidth*0.25),
                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding:  EdgeInsets.only(left: screenWidth*0.05),
                    //         child:
                    //         Text("Reason :", style: TextStyle(
                    //             fontSize: screenWidth*0.06, fontWeight: FontWeight.bold))),
                    //       const Spacer(),
                    //       Padding(
                    //         padding:  EdgeInsets.only(left: screenWidth*0.05),
                    //         child:
                    //         Text("Chest pain", style: TextStyle(
                    //             fontSize: screenWidth*0.05, fontWeight: FontWeight.bold)),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(height: screenWidth * 0.01),
                    // Padding(
                    //   padding: EdgeInsets.only(right: screenWidth * 0.25),
                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("Gender :",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //       const Spacer(),
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("Male",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(height: screenWidth * 0.01),
                    // Padding(
                    //   padding: EdgeInsets.only(right: screenWidth * 0.25),
                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("Name :",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //       const Spacer(),
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("Deepak",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(height: screenWidth * 0.01),
                    // Padding(
                    //   padding: EdgeInsets.only(right: screenWidth * 0.25),
                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("Age :",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //       const Spacer(),
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("51",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(height: screenWidth * 0.01),
                    // Padding(
                    //   padding: EdgeInsets.only(right: screenWidth * 0.25),
                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("Date :",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //       const Spacer(),
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("August 25, 2021",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(height: screenWidth * 0.01),
                    // Padding(
                    //   padding: EdgeInsets.only(right: screenWidth * 0.25),
                    //   child: Row(
                    //     children: [
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("Time :",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //       const Spacer(),
                    //       Padding(
                    //         padding: EdgeInsets.only(left: screenWidth * 0.05),
                    //         child: Text("10:50 AM",
                    //             style: TextStyle(fontSize: screenWidth * 0.04)),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            primary: allColor.backGroundColor),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PcpNotesOne()));
                        },
                        child: const Text("PCP Visit Summary")),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.05),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            primary: allColor.elevatedBtnColor),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Prescription()));
                        },
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.02,
                                top: screenWidth * 0.02,
                                bottom: screenWidth * 0.02,
                                right: screenWidth * 0.02),
                            child: Text('My Prescription',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                )))),
                  ),
                ],
              ),
            )));
  }
}
