import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/given_test.dart';
import 'package:design/screen/others_screen/lab_report.dart';
import 'package:design/screen/others_screen/medicine_list.dart';
import 'package:design/screen/others_screen/order_labs_two.dart';
import 'package:design/screen/others_screen/patient_test_history.dart';
import 'package:design/screen/others_screen/stop_old_medicine.dart';
import 'package:design/services/lab_report_service.dart';
import 'package:design/services/lab_reports_Ser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderLabs extends StatefulWidget {
  const OrderLabs({Key? key}) : super(key: key);

  @override
  _OrderLabsState createState() => _OrderLabsState();
}

class _OrderLabsState extends State<OrderLabs> {
  var addNewReport = false;
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4'
  ]; // DefaultTestList API
  String? selectedItem = 'Item 1';
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
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
                      child: Text("Order Labs")),
                  Spacer(),
                  Container(
                      height: screenHeight * 0.07,
                      child: Image.asset("assets/images/k.jpeg")),
                ],
              ),
              SizedBox(
                height: screenWidth * 0.05,
              ),
              Row(children: [
                Text("Javed Ahmad M/46",
                    style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold)),
                const Spacer(),
                Container(
                  height: screenHeight * 0.08,
                  child: Image(image: AssetImage("assets/images/men.png")),
                )
              ]),
              SizedBox(height: screenWidth * 0.20),
              Container(
                decoration: BoxDecoration(
                    color: allColor.homebgColor,
                    borderRadius: BorderRadius.circular(30)),
                height: screenHeight * 0.45,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: addNewReport
                      ? Column(
                          children: [
                            const Text(
                              'select a report',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                              width: 3, color: Colors.grey))),
                                  value: selectedItem,
                                  items: items
                                      .map((item) => DropdownMenuItem(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: TextStyle(fontSize: 20),
                                          )))
                                      .toList(),
                                  onChanged: (item) {
                                    setState(() {
                                      selectedItem = item as String?;
                                    });
                                  }),
                            ),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: 'Description'),
                              maxLines: 3,
                              keyboardType: TextInputType.multiline,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    primary: Color(0xffb3d9ef)),
                                onPressed: () {
                                  //StoreOrderLabTest API
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.02,
                                      top: screenWidth * 0.02,
                                      bottom: screenWidth * 0.02,
                                      right: screenWidth * 0.02),
                                  child: Text('Submit',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.04,
                                          color: Colors.black)),
                                )),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: double.infinity,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    primary: Color(0xffb3d9ef)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => GivenTest()));
                                  //UserOrderLabTestList API
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.02,
                                      top: screenWidth * 0.02,
                                      bottom: screenWidth * 0.02,
                                      right: screenWidth * 0.02),
                                  child: Text('Given Test',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.04,
                                          color: Colors.black)),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    primary: Color(0xfffae5dd)),
                                onPressed: () {
                                  setState(() {
                                    addNewReport = true;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.02,
                                      top: screenWidth * 0.02,
                                      bottom: screenWidth * 0.02,
                                      right: screenWidth * 0.02),
                                  child: Text('Give a Test',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.04,
                                          color: Colors.black)),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    primary: Color(0xfffae5dd)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PatientTestHistory()));
                                  // AllLabReport API
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: screenWidth * 0.02,
                                      top: screenWidth * 0.02,
                                      bottom: screenWidth * 0.02,
                                      right: screenWidth * 0.02),
                                  child: Text('Patient Test History',
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.04,
                                          color: Colors.black)),
                                )),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: addNewReport
          ? Padding(
              padding: EdgeInsets.all(screenWidth * 0.10),
              child: Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          primary: Colors.blue),
                      onPressed: () {
                        setState(() {
                          addNewReport = false;
                        });
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
                ],
              ),
            )
          : SizedBox(
              width: 2,
            ),
    ));
  }
}
