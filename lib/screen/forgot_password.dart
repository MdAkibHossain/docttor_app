import 'package:design/helper/custom_text_field.dart';
import 'package:design/screen/others_screen/find_account.dart';
import 'package:flutter/material.dart';
class ForgottPassword extends StatefulWidget {
  const ForgottPassword({Key? key}) : super(key: key);

  @override
  _ForgottPasswordState createState() => _ForgottPasswordState();
}
TextEditingController _emailController= TextEditingController();
class _ForgottPasswordState extends State<ForgottPassword> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight= MediaQuery.of(context).size.height;
    final double screenWidth= MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(left: screenWidth*0.05, right: screenWidth*0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight*0.05),

                Row(
                  children: [
                    Text("KAMBAII", style: TextStyle(fontSize: screenWidth*0.06, fontWeight: FontWeight.bold
                    , color: Colors.blueGrey),),
                    Spacer(),
                    Padding(
                      padding:  EdgeInsets.only(right: screenWidth*0.02),
                      child:
                      Container(
                          height: screenHeight*0.07,
                          child:Image.asset("assets/images/k.jpeg")))]),
                SizedBox(height: screenHeight*0.05),
                CustomTextField(
                  controller: _emailController,
                  hintText: "Enter your phone number",
                  suffixIcon: Icon(Icons.phone),
                  obsecureValue: false,
                ),
                SizedBox(height: screenHeight*0.03,),
                Container(width: screenWidth,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>FindAccount()));
                      },
                      child: Text("Find your account")),
                ),


              ],
            ),
          ),
        ),

      ),
    );
  }
}
