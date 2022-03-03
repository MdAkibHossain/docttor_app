import 'package:cached_network_image/cached_network_image.dart';
import 'package:design/screen/get_started.dart';
import 'package:design/screen/others_screen/add_new_medicine.dart';
import 'package:design/screen/others_screen/call_the_patient.dart';
import 'package:design/screen/others_screen/lab_report.dart';
import 'package:design/screen/others_screen/medical_history.dart';
import 'package:design/screen/others_screen/drug_interaction.dart';
import 'package:design/screen/others_screen/medicine_list.dart';
import 'package:design/screen/others_screen/order_labs.dart';
import 'package:design/screen/patient_datas/pcp_next_page.dart';
import 'package:design/screen/patient_datas/pcp_notes_one.dart';
import 'package:design/screen/others_screen/provisional.dart';
import 'package:design/screen/patient_datas/review_vitals.dart';
import 'package:design/screen/others_screen/special_assessment.dart';
import 'package:design/screen/others_screen/stop_old_medicine.dart';
import 'package:flutter/material.dart';
import 'package:design/screen/others_screen/prescription_formate.dart';
import 'package:provider/provider.dart';

import '../../services/patient_details_service.dart';

class PatientHelper {
  navigate(BuildContext context, int i) {
    if (i == 0) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const PcpNotesOne()));
    } else if (i == 1) {
      return Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Medical())); //medical history
    } else if (i == 2) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ReviewVitals()));
    } else if (i == 3) {
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LabReport()));
    } else if (i == 4) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Provitional()));
    } else if (i == 5) {
      return Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const SpecialistAssessment()));
    } else if (i == 6) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MedicineList()));
    } else if (i == 7) {
      return Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const DrugInteraction())); // drug interaction
    } else if (i == 8) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const StopOldMedicine()));
    } else if (i == 9) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CallThePatient()));
    } else if (i == 10) {
      return Navigator.push(
          context, MaterialPageRoute(builder: (context) => const OrderLabs()));
    } else if (i == 11) {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const AddNewMedicine()));
    } else {
      return Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Prescription()));
    }
  }

  List buttonList = [
    "PCP visit summary",
    "Medical History",
    "Review Vitals",
    "View Lab Report",
    "Provisional Diagnosis",
    "Specialist Assessment",
    "Medicine List",
    "Drug Interaction",
    "Stop old medicine",
    "Call the patient",
    "Order Labs",
    "Add new medicine",
    "My prescription",
  ];

  List buttonIcons = [
    "assets/icons/summary.png",
    "assets/icons/med-history.png",
    "assets/icons/vitals.png",
    "assets/icons/lab-report.png",
    "assets/icons/diagnostic.png",
    "assets/icons/assessment.png",
    "assets/icons/list.png",
    "assets/icons/drug-interaction.png",
    "assets/icons/stop.png",
    "assets/icons/call.png",
    "assets/icons/lab.png",
    "assets/icons/add.png",
    "assets/icons/pills.png",
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

//user name and profile image card
  nameAndImage() {
    return Consumer<PatientDetailsService>(
      builder: (context, provider, child) => Row(children: [
        Text(
          provider.patientDetails.data.uinfo.name ?? "",
          style: TextStyle(
              color: allColor.blackTextColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        SizedBox(
          width: 65,
          height: 65,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: CachedNetworkImage(
              imageUrl:
                  'https://dev.kambaiihealth.com/public/profile_pic/${provider.patientDetails.data.uinfo.photo}',
              placeholder: (context, url) {
                return Image.asset('assets/images/placeholder.png');
              },
              errorWidget: (context, url, error) => const Icon(Icons.error),
              height: 65,
              width: 65,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]),
    );
  }
}
