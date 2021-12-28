import 'package:flutter/material.dart';
import 'package:best_mentor/theme.dart';

class MentorCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  MentorCard({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
        right: 8,
        bottom: 30,
      ),
      child: Stack(
        children: [
          Image.asset(
            imageUrl,
            width: 250,
            height: 131,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                bottom: 12,
                left: 12,
              ),
              child: Text(
                text,
                style: poppins.copyWith(
                  color: whiteColor,
                  fontSize: 12,
                  fontWeight: semibold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
