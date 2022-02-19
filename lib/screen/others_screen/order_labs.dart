import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/medicine_list.dart';
import 'package:design/screen/others_screen/order_labs_two.dart';
import 'package:design/screen/others_screen/stop_old_medicine.dart';
import 'package:flutter/material.dart';

class OrderLabs extends StatefulWidget {
  const OrderLabs({Key? key}) : super(key: key);

  @override
  _OrderLabsState createState() => _OrderLabsState();
}
class _OrderLabsState extends State<OrderLabs> {
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
                          child: Text("Order Labs")),
                      Spacer(),
                      Container(
                          height: screenHeight*0.07,
                          child:Image.asset("assets/images/k.jpeg")),
                    ],
                  ),
                  SizedBox(height: screenWidth*0.05,),
                  Row(children: [
                    Text("Javed Ahmad M/46", style: TextStyle(fontSize: screenWidth*0.06,
                        fontWeight: FontWeight.bold)),
                    Spacer(),
                    Container(
                      height: screenHeight*0.08,
                      child: Image(image: AssetImage("assets/images/men.png")),
                    )]),

                  SizedBox(height: screenWidth*0.55),
                  Container(
                    decoration: BoxDecoration(
                        color: allColor.homebgColor,
                        borderRadius: BorderRadius.circular(30)),
                    height: screenHeight*0.15,
                    child: Padding(
                      padding:  EdgeInsets.all(20),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order Labs', style: TextStyle(fontSize: screenWidth*0.05, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      primary: Color(0xffb3d9ef)),
                                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderLabsTwo()));},
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: screenWidth*0.02, top: screenWidth*0.02,
                                        bottom: screenWidth*0.02, right: screenWidth*0.02),
                                    child: Text('Yes', style: TextStyle(fontSize: screenWidth*0.04,color: Colors.black)),)),
                              SizedBox(width: 10),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                      primary: Color(0xfffae5dd)
                                  ),
                                  onPressed: (){
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                                  },
                                  child:
                                  Padding(
                                    padding:  EdgeInsets.only(left: screenWidth*0.02, top: screenWidth*0.02,
                                        bottom: screenWidth*0.02, right: screenWidth*0.02),
                                    child: Text('No', style: TextStyle(fontSize: screenWidth*0.04, color: Colors.black)),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineList()));
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
