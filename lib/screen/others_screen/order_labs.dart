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
List<String> rules=[
  "Before meal",
  "After meal",
  "2 times daily\n"
      "after meal",
  "3 times daily ",
  "Continue"];
String ? initValRules;
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
                  SizedBox(height: screenWidth*0.15),
                  Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "search",
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black12)),
                            focusColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(10))))),
                      SizedBox(width: screenWidth*0.02,),
                      Container(
                        height: screenHeight*0.07,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                            border: Border.all(
                                color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: DropdownButton(
                              iconDisabledColor: Colors.white,
                              iconEnabledColor: Colors.white,
                            hint: Text('Meal', style: TextStyle(color: Colors.white)),
                              items: rules.map((val) => DropdownMenuItem(
                                value: val,
                                  child: Text(val))).toList(),
                              onChanged: (newVal){
                                setState(() {
                                  initValRules=newVal.toString();
                                });
                              }),
                        ),
                      )

                    ]),

                  SizedBox(height: screenWidth*0.25),
                  
                  Padding(
                    padding:  EdgeInsets.all(screenWidth*0.02),
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                primary: allColor.backGroundColor
                            ),
                            onPressed: (){},
                            child:
                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
                                  bottom: screenWidth*0.02, right: screenWidth*0.05),
                              child: Text('Order Labs', style: TextStyle(fontSize: screenWidth*0.04,)),
                            )
                        ),
                        Spacer(),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                primary: Color(0xffb3d9ef)
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderLabsTwo()));
                            },
                            child:
                            Padding(
                              padding:  EdgeInsets.only(left: screenWidth*0.02, top: screenWidth*0.02,
                                  bottom: screenWidth*0.02, right: screenWidth*0.02),
                              child: Text('Yes', style: TextStyle(fontSize: screenWidth*0.04,color: Colors.black)),
                            )
                        ),
                        Spacer(),
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
