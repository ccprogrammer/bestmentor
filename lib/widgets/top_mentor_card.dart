import 'package:flutter/material.dart';
import 'package:best_mentor/theme.dart';

class TopMentorCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String job;
  final String reviews;

  TopMentorCard(
      {required this.imageUrl,
      required this.name,
      required this.job,
      required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
        right: 8,
      ),
      padding: EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
        bottom: 14,
      ),
      // width: MediaQuery.of(context).size.width * 0.6 - ((2*30)+8),
      width: 160,
      decoration: BoxDecoration(
        color: bgGreyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
          ),
          SizedBox(height: 6),
          Text(
            name,
            style: poppins.copyWith(
              color: Colors.black,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 6),
          Text(
            job,
            style: poppins.copyWith(
              fontSize: 12,
              color: greyTextColor,
            ),
          ),
          SizedBox(height: 6),
          Text(
            reviews,
            style: poppins.copyWith(
              fontSize: 12,
              color: greyTextColor,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 40,
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/hire');
              },
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                backgroundColor: bgSalmonColor,
              ),
              child: Text(
                'Hire Me',
                style: poppins.copyWith(
                  color: whiteColor,
                  fontWeight: medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
