import 'package:cached_network_image/cached_network_image.dart';
import 'package:design/screen/get_started.dart';
import 'package:flutter/material.dart';

class PatientHelper {
  // Widget profileCard() {
  //   return Container(
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(5),
  //       boxShadow: [
  //         BoxShadow(
  //             color: Colors.black.withOpacity(0.01),
  //             spreadRadius: -2,
  //             blurRadius: 13,
  //             offset: const Offset(0, 13)),
  //       ],
  //     ),
  //     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         //profile image
  //         SizedBox(
  //           width: 60,
  //           height: 60,
  //           child: ClipRRect(
  //             borderRadius: BorderRadius.circular(100),
  //             child: CachedNetworkImage(
  //               imageUrl:
  //                   'https://cdn.pixabay.com/photo/2014/08/05/10/30/iphone-410324__340.jpg',
  //               placeholder: (context, url) {
  //                 return Image.asset('assets/images/placeholder.png');
  //               },
  //               errorWidget: (context, url, error) => const Icon(Icons.error),
  //               height: 60,
  //               width: 60,
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         ),
  //         const SizedBox(
  //           width: 13,
  //         ),
  //         Text(
  //           "S.M. Saleheen",
  //           style: TextStyle(color: allColor.blackTextColor, fontSize: 18),
  //         ),
  //         const SizedBox(
  //           height: 6,
  //         ),
  //         //username
  //         Text(
  //           "01625683832",
  //           style: TextStyle(
  //             color: allColor.blackTextColor,
  //             fontSize: 12,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

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
