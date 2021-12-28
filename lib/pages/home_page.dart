import 'package:best_mentor/widgets/mentor_tips_card.dart';
import 'package:best_mentor/widgets/top_mentor_card.dart';
import 'package:flutter/material.dart';
import 'package:best_mentor/theme.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isCategory = false;
  int categoryIndex = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: 30,
          left: 30,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/image_profile.png',
              width: 50,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: poppins.copyWith(
                      fontSize: 12,
                      color: greyColor,
                    ),
                  ),
                  Text(
                    'Bimo Semesta',
                    style: poppins.copyWith(
                      fontSize: 14,
                      fontWeight: semibold,
                      color: whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 15),
            Image.asset(
              'assets/icon_notification.png',
              width: 18,
            ),
          ],
        ),
      );
    }

    Widget searchBar() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: bgGreyColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Find your favorite mentor',
                    hintStyle: poppins.copyWith(
                      color: greyTextColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              width: 50,
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: bgSalmonColor,
                ),
                child: Image.asset(
                  'assets/icon_search.png',
                  width: 20,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget category({required text, required index}) {
      return Container(
        margin: EdgeInsets.only(
          top: 12,
          right: 12,
        ),
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(
            color: categoryIndex == index ? Colors.transparent : bgGreyColor,
          ),
        ),
        child: TextButton(
          onPressed: () {
            setState(() {
              categoryIndex = index;
              print(categoryIndex);
            });
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(10),
            backgroundColor:
                categoryIndex == index ? bgSalmonColor : Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            text,
            style: poppins.copyWith(
              color: categoryIndex == index ? whiteColor : greyTextColor,
              fontSize: 10,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget topMentorTitle() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: Text(
          'Top Mentor',
          style: poppins.copyWith(
            color: Colors.black,
            fontSize: 16,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget MentorTipsTitle() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          top: 30,
        ),
        child: Text(
          'Mentor Tips',
          style: poppins.copyWith(
            color: Colors.black,
            fontWeight: semibold,
            fontSize: 16,
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteCardColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchBar(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 30),
                  category(
                    text: 'UI Designer',
                    index: 0,
                  ),
                  category(
                    text: 'Product Designer',
                    index: 1,
                  ),
                  category(
                    text: 'Development',
                    index: 2,
                  ),
                  category(
                    text: 'UX Designer',
                    index: 3,
                  ),
                ],
              ),
            ),
            topMentorTitle(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 30),
                  TopMentorCard(
                    imageUrl: 'assets/image_mentor_1.png',
                    name: 'Braun Marz',
                    job: 'UI/UX Designer, Google',
                    reviews: '9 Reviews',
                  ),
                  TopMentorCard(
                    imageUrl: 'assets/image_mentor_2.png',
                    name: 'Uden Yeager',
                    job: 'UI Designer, Gojek',
                    reviews: '2 Reviews',
                  ),
                  TopMentorCard(
                    imageUrl: 'assets/image_mentor_3.png',
                    name: 'Mira Yokz',
                    job: 'UI Designer, Facebook',
                    reviews: '96,3K Followers',
                  ),
                ],
              ),
            ),
            MentorTipsTitle(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 30),
                  MentorCard(
                    imageUrl: 'assets/image_mentor_tips_1.png',
                    text: 'How to speak fluently with\nstrangers',
                  ),
                  MentorCard(
                    imageUrl: 'assets/image_mentor_tips_2.png',
                    text: 'How to do the right presentation\nactivity',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget customBottomNav() {
      return BottomNavigationBar(
        unselectedItemColor: greyTextColor,
        selectedItemColor: bgPurpleColor,
        currentIndex: currentIndex,
        elevation: 0,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_home.png',
              width: 24,
              color: currentIndex == 0 ? bgPurpleColor : greyColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_save.png',
              width: 14,
              height: 18,
              color: currentIndex == 1 ? bgPurpleColor : greyColor,
            ),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_chat.png',
              width: 18,
              height: 20,
              color: currentIndex == 2 ? bgPurpleColor : greyColor,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_profile.png',
              width: 20,
              color: currentIndex == 3 ? bgPurpleColor : greyColor,
            ),
            label: 'Profile',
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgPurpleColor,
      body: ListView(
        children: [
          header(),
          Spacer(),
          content(),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: customBottomNav(),
      ),
    );
  }
}
