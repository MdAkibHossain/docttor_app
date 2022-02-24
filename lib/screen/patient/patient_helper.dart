import 'package:cached_network_image/cached_network_image.dart';
import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/add_new_medicine.dart';
import 'package:design/screen/others_screen/call_the_patient.dart';
import 'package:design/screen/others_screen/lab_report.dart';
import 'package:design/screen/others_screen/medical_history.dart';
import 'package:design/screen/others_screen/medicine_list.dart';
import 'package:design/screen/others_screen/order_labs.dart';
import 'package:design/screen/others_screen/pcp_next_page.dart';
import 'package:design/screen/others_screen/pcp_notes_one.dart';
import 'package:design/screen/others_screen/provisional.dart';
import 'package:design/screen/others_screen/review_vitals.dart';
import 'package:design/screen/others_screen/special_assessment.dart';
import 'package:design/screen/others_screen/stop_old_medicine.dart';
import 'package:flutter/material.dart';
import 'package:design/screen/others_screen/prescription_formate.dart';

class PatientHelper {
  navigate(BuildContext context, int i) {
    if (i == 0) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Prescription()));
    } else if (i == 0) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PcpNotesOne()));
    } else if (i == 1) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PcpNextPage()));
    } else if (i == 2) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ReviewVitals()));
    } else if (i == 3) {
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Medical()));
    } else if (i == 4) {
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LabReport()));
    } else if (i == 5) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Provitional()));
    } else if (i == 6) {
      return Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const SpecialistAssessment()));
    } else if (i == 7) {
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => const OrderLabs()));
    } else if (i == 8) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MedicineList()));
    } else if (i == 9) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const StopOldMedicine()));
    } else if (i == 10) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CallThePatient()));
    } else {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AddNewMedicine()));
    }
  }

  List buttonList = [
    "My prescription",
    "PCP visit summary",
    "Write Notes to PCP",
    "Review Vitals",
    "Medical History",
    "View Lab Report",
    "Provisional Diagnosis",
    "Specialist Assessment",
    "Order Labs",
    "Medicine List",
    "Stop old medicine",
    "Call the patient",
    "Add new medicine",
  ];

  List buttonIcons = [
    "assets/icons/informative.png",
    "assets/icons/home-blue.png",
    "assets/icons/note.png",
    "assets/icons/trolley.png",
    "assets/icons/rating.png",
    "assets/icons/blogging.png"
  ];

  //top grey bar
  topgreyBar(String title) {
    return Container(
      color: Colors.grey.withOpacity(.25),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  //info single row
  infoSingleRow(String title, String info) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          //title
          SizedBox(
            width: 150,
            child: Text(
              title,
              style: TextStyle(
                color: allColor.blackTextColor,
                fontSize: 13,
              ),
            ),
          ),

          //info
          Flexible(
            child: Text(
              info,
              style: TextStyle(
                color: allColor.blackTextColor,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
