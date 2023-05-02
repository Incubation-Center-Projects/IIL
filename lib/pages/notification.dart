import 'package:flutter/material.dart';
import 'package:incubation2/constants/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Notification',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Today",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const CustomListTile(
              icon: Icons.account_balance_wallet,
              subtitle: 'you\'ve made a course payment',
              title: 'Payment Successful',
            ),
            CustomListTile(
              title: "Today's Special Offer",
              subtitle: "You got a special promo today",
              icon: MdiIcons.gift,
              backgroundColor: Colors.amber[400],
            ),
            const Text(
              "Yestarday",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const CustomListTile(
              title: "New category Courses",
              subtitle: "Now, new personality course is available",
              icon: FontAwesomeIcons.bookOpenReader,
              backgroundColor: Colors.pinkAccent,
            ),
            const CustomListTile(
                title: "Credit Card connected",
                subtitle: "Credit Card has been linked",
                icon: Icons.credit_card),
            const Text(
              "April 24, 2023",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const CustomListTile(
              title: "Account Setup Successful",
              subtitle: "Your account has been created",
              icon: Icons.person,
              backgroundColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color? backgroundColor;
  const CustomListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon,
      this.backgroundColor = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 4.0,
      child: ListTile(
        title: Text(
          "$title!",
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(subtitle),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        tileColor: Colors.white,
      ),
    );
  }
}
