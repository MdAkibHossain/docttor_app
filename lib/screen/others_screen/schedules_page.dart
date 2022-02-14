import 'package:flutter/material.dart';

class Schedules extends StatefulWidget {
  const Schedules({Key? key}) : super(key: key);

  @override
  _SchedulesState createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth,
                height: screenHeight*0.50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter:  ColorFilter.mode(Colors.grey.withOpacity(0.1), BlendMode.dstATop),
                      image: AssetImage("assets/images/clock.png"), fit: BoxFit.cover)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight*0.02,),
                    Padding(
                      padding:  EdgeInsets.all(screenHeight*0.02),
                      child: Row(
                        children: [
                          Container(
                            height: screenHeight*0.10,
                            child: Image(image: AssetImage("assets/images/men.png")),
                          ),

                          Padding(
                            padding:  EdgeInsets.only(left: screenWidth*0.02),
                            child: Text("Dr.Mahmood", style: TextStyle(fontSize: screenWidth*0.06, fontWeight: FontWeight.bold)),
                          ),
                          Spacer(),
                          Container(
                              height: screenHeight*0.07,
                              child:Image.asset("assets/images/k.jpeg")),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("Schedule 10 Oct 2021", style: TextStyle(
                          fontSize: screenWidth*0.06, fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: screenHeight*0.02,),
                    Center(
                      child:
                      Text("10 Patient(S)", style: TextStyle(
                          fontSize: screenWidth*0.06, fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                    ),
                    SizedBox(height: screenHeight*0.04,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (index, context){
                            return
                              Column(
                                children: [
                                  Container(
                                    height: screenHeight*0.08,
                                    width: screenWidth*0.20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(360)
                                    ),
                                    child: Image.asset("assets/images/men.png"),
                                  ),
                                  SizedBox(height: screenHeight*0.02),
                                  Text("Jabed\n"
                                      "Ahmad", style: TextStyle(
                                      fontSize: screenWidth*0.04, fontWeight: FontWeight.bold)),

                                ],
                              );

                          }
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.02),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: screenHeight*0.04,
                    width: screenWidth*0.15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360)
                    ),
                    child: Image.asset("assets/images/menu.png"),
                  ),
                  Container(
                    height: screenHeight*0.05,
                    width: screenWidth*0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(360)
                    ),
                    child: Image.asset("assets/images/menu2.png"),
                  ),
                ],
              ),

              SizedBox(height: screenHeight*0.02),
              Padding(
                padding:  EdgeInsets.only(right: screenWidth*0.25),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("Reason :", style: TextStyle(
                          fontSize: screenWidth*0.06, fontWeight: FontWeight.bold)),
                    ),
                    Spacer(),
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("Chest pain", style: TextStyle(
                          fontSize: screenWidth*0.05, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth*0.01),
              Padding(
                padding:  EdgeInsets.only(right: screenWidth*0.25),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("Gender :", style: TextStyle(
                          fontSize: screenWidth*0.04)),
                    ),
                    Spacer(),
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("Male", style: TextStyle(
                          fontSize: screenWidth*0.04)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth*0.01),
              Padding(
                padding:  EdgeInsets.only(right: screenWidth*0.25),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("Age :", style: TextStyle(
                          fontSize: screenWidth*0.04)),
                    ),
                    Spacer(),
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("51", style: TextStyle(
                          fontSize: screenWidth*0.04)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth*0.01),
              Padding(
                padding:  EdgeInsets.only(right: screenWidth*0.25),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("Date :", style: TextStyle(
                          fontSize: screenWidth*0.04)),
                    ),
                    Spacer(),
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("August 25, 2021", style: TextStyle(
                          fontSize: screenWidth*0.04)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth*0.01),
              Padding(
                padding:  EdgeInsets.only(right: screenWidth*0.25),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("Time :", style: TextStyle(
                          fontSize: screenWidth*0.04)),
                    ),
                    Spacer(),
                    Padding(
                      padding:  EdgeInsets.only(left: screenWidth*0.05),
                      child:
                      Text("10:50 AM", style: TextStyle(
                          fontSize: screenWidth*0.04)),
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}
