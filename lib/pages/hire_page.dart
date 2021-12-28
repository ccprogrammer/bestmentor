import 'package:best_mentor/widgets/experience_tile.dart';
import 'package:flutter/material.dart';
import 'package:best_mentor/theme.dart';

class HirePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: 41,
          right: 36,
          top: 38,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset(
                'assets/icon_chevron_left.png',
                width: 8,
                height: 14,
              ),
            ),
            Image.asset(
              'assets/icon_menu.png',
              width: 18,
              height: 14,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 38),
        decoration: BoxDecoration(
          color: bgGreyColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            // PROFILE HEAD
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 215,
                  decoration: BoxDecoration(
                    color: whiteCardColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: -50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image_profile_2.png',
                        width: 100,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Braun Marz',
                        style: poppins.copyWith(
                          color: Colors.black,
                          fontWeight: semibold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'UI/UX Designer, Google',
                        style: poppins.copyWith(
                          color: greyTextColor,
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 77),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/icon_dribble.png',
                              width: 40,
                            ),
                            Image.asset(
                              'assets/icon_linkedin.png',
                              width: 40,
                            ),
                            Image.asset(
                              'assets/icon_twitter.png',
                              width: 40,
                            ),
                            Image.asset(
                              'assets/icon_youtube.png',
                              width: 40,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 117),
                        height: 40,
                        width: 140,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: bgSalmonColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
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
                ),
              ],
            ),
            // PROFILE CATEGORY
            Container(
              margin: EdgeInsets.only(left: 22, right: 22, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'My Experience(2)',
                        style: poppins.copyWith(
                          color: bgPurpleColor,
                          fontWeight: semibold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: bgPurpleColor),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'My Experience(2)',
                        style: poppins.copyWith(
                          color: greyTextColor,
                          fontWeight: semibold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                    ],
                  ),
                ],
              ),
            ),
            // PROFILE CONTENT
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                bottom: 30,
              ),
              decoration: BoxDecoration(
                color: whiteCardColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  // EXPERIENCE
                  Container(
                    margin: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: 30,
                    ),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Experience',
                          style: poppins.copyWith(
                            color: Colors.black,
                            fontWeight: semibold,
                            fontSize: 16,
                          ),
                        ),
                        ExperienceTile(
                          imageUrl: 'assets/icon_google.png',
                          company: 'Google',
                          job: 'UI/UX Lead',
                          since: '3 Months',
                        ),
                        ExperienceTile(
                          imageUrl: 'assets/icon_gojek.png',
                          company: 'Gojek Indonesia',
                          job: 'Product Designer',
                          since: '4 Years',
                        ),
                      ],
                    ),
                  ),
                  // MY PORTFOLIO
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 30,
                    ),
                    width: double.infinity,
                    child: Text(
                      'My Portfolio',
                      style: poppins.copyWith(
                        color: Colors.black,
                        fontWeight: semibold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 30),
                        Image.asset(
                          'assets/image_portfolio_1.png',
                          width: 135,
                        ),
                        SizedBox(width: 12),
                        Image.asset(
                          'assets/image_portfolio_2.png',
                          width: 135,
                        ),
                        SizedBox(width: 12),
                        Image.asset(
                          'assets/image_portfolio_3.png',
                          width: 135,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgPurpleColor,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
