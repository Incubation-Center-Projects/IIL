import 'package:flutter/material.dart';
import 'package:incubation2/constants/colors.dart';
import 'package:incubation2/pages/bookmarks.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.white,
        title: const Text(
          "My Courses",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
      ),
      body: DefaultTabController(
        length: 2, // Specify the number of tabs
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50, // Height of the AppBar
                color: Colors.white, // Color of the AppBar
                child: const TabBar(
                  indicatorColor: Color(0xff6C63FF),
                  tabs: [
                    Tab(
                      child: Text(
                        "Ongoing",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Completed",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Widgets for Tab 1
                  const Center(
                    child: Text('Tab 1 content'),
                  ),
                  // Widgets for Tab 2
                  Column(
                    children: const [
                      CustomBookmarkTile(
                          tag: "basic", title: "Defeating Stage Fear"),
                      CustomBookmarkTile(
                          tag: "Career", title: "Master Public Speaking"),
                      CustomBookmarkTile(
                          tag: "Leadership",
                          title: "How to get right decisions ")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
