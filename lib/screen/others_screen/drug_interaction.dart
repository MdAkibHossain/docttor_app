import 'package:flutter/material.dart';

class DrugInteraction extends StatefulWidget {
  const DrugInteraction({Key? key}) : super(key: key);

  @override
  _DrugInteractionState createState() => _DrugInteractionState();
}

class _DrugInteractionState extends State<DrugInteraction> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Row(children: [
                Text(
                  "KAMBAII",
                  style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(right: screenWidth * 0.02),
                    child: Container(
                        height: screenHeight * 0.07,
                        child: Image.asset("assets/images/k.jpeg")))
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth * 0.03,
                  right: screenWidth * 0.03,
                  top: screenWidth * 0.02),
              child: Row(
                children: [
                  Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            focusColor: Colors.blueGrey,
                            hoverColor: Colors.blueGrey,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueGrey),
                            ),
                            hintText: "Search DrugInteraction here"),
                      ),
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.72,
                      color: Colors.white),
                  Container(
                    child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                    height: screenHeight * 0.06,
                    width: screenWidth * 0.20,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
