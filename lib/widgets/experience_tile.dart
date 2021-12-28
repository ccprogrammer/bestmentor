import 'package:flutter/material.dart';
import 'package:best_mentor/theme.dart';

class ExperienceTile extends StatelessWidget {


  final String imageUrl;
  final String company;
  final String job;
  final String since;

  ExperienceTile({required this.imageUrl, required this.company, required this.job, required this.since,});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: bgGreyColor),
            ),
            child: Image.asset(imageUrl),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  company,
                  style: poppins.copyWith(
                    color: greyTextColor,
                    fontWeight: light,
                    fontSize: 12,
                  ),
                ),
                Text(
                  job,
                  style: poppins.copyWith(
                    color: bgPurpleColor,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          SizedBox(width: 15),
          Text(
            since,
            style: poppins.copyWith(
              color: greyTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
