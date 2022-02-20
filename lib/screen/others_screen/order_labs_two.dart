import 'package:design/screen/get_started.dart';
import 'package:flutter/material.dart';

class OrderLabsTwo extends StatefulWidget {
  const OrderLabsTwo({Key? key}) : super(key: key);

  @override
  _OrderLabsTwoState createState() => _OrderLabsTwoState();
}
List<String> rules=[];
String ? initValRules;
TextEditingController _labTestEditingController= TextEditingController();
class _OrderLabsTwoState extends State<OrderLabsTwo> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body:
          Padding(
            padding:  EdgeInsets.all(screenWidth*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight*0.02,),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: allColor.backGroundColor),
                        onPressed: (){},
                        child: Text("Order Labs")),
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
                      child: Image(image: AssetImage("assets/images/men.png")))]),
                Padding(
                  padding:  EdgeInsets.all(screenWidth*0.01),
                  child: Text("Complaint", style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),),
                Container(
                  // color: Color(0xffff7e11),
                   height: screenHeight*0.05,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey)
                  ),
                  width: screenWidth,
                  child:
                  Padding(
                    padding:  EdgeInsets.all(screenWidth*0.03),
                    child:
                    Text("Chest pain since last 6 month"
                        , style: TextStyle(fontSize: screenWidth*0.04,
                        )))),
                SizedBox(height: screenWidth*0.05),
                Padding(
                  padding:  EdgeInsets.all(screenWidth*0.01),
                  child: Text("Add Lab Test", style: TextStyle(fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),),
               Container(
                 height: screenHeight*0.05,
                 child: Row(children: [
                   Flexible(
                       child: TextFormField(
                           controller: _labTestEditingController,
                           decoration: InputDecoration(
                               hintText: "Lab Test",
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
                               hint: Text('Lab Test', style: TextStyle(color: Colors.white)),
                               items: rules.map((val) => DropdownMenuItem(
                                   value: val,
                                   child: Text(val))).toList(),
                               onChanged: (newVal){
                                 setState(() {
                                   initValRules=newVal.toString();});})))])),

                SizedBox(height: screenWidth*0.03),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        primary: allColor.elevatedBtnColor),
                    onPressed: (){},
                    child: Padding(
                        padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
                            bottom: screenWidth*0.02, right: screenWidth*0.05),
                        child: Text('Add', style: TextStyle(fontSize: screenWidth*0.04)))),
                SizedBox(height: screenWidth*0.05),
                // Expanded(
                //   child: ListView.builder(
                //       itemCount: 5,
                //       itemBuilder: (context, index){
                //         return
                //           Padding(
                //             padding:  EdgeInsets.only(top: 5, bottom: 5),
                //             child: Container(
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.circular(10),
                //                   border: Border.all(color: Colors.grey)),
                //               width: screenWidth,
                //               height: screenHeight*0.05,
                //               child: Column(
                //                 children: [
                //                   Row(
                //                     children: [
                //                       Text(_labTestEditingController.text)
                //                     ],
                //                   )
                //                 ],
                //               ),
                //             ),
                //           );
                //       }),
                // ),
              ],
            ),
          ),
          bottomNavigationBar: Padding(
            padding:  EdgeInsets.only(left: screenWidth*0.10, right: screenWidth*0.10,bottom: screenWidth*0.05),
            child: Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: Colors.blue),
                    onPressed: (){Navigator.pop(context);},
                    child: Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05, top: screenWidth*0.02,
                          bottom: screenWidth*0.02, right: screenWidth*0.05),
                      child: Text('Back', style: TextStyle(fontSize: screenWidth*0.04)))),
                Spacer(),
                Container(
                  height: screenHeight*0.05,
                  child: InkWell(
                      onTap: (){},
                      child: Image.asset("assets/images/right.png"))),
                Spacer(),
                Container(
                  height: screenHeight*0.05,
                  child:
                  InkWell(onTap: (){},
                      child: Image.asset("assets/images/setting.png")),
                ),
              ],
            ),
          ),
        )
    );
  }
}
