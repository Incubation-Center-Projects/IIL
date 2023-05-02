import 'package:flutter/material.dart';
import 'package:incubation2/constants/colors.dart';

class BookMarksPage extends StatelessWidget {
  const BookMarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Bg,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "My Bookmarks",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              CustomTextButton(
                backgroundColor: Color(0xff6C63FF),
                text: 'All',
              ),
              CustomTextButton(
                backgroundColor: Color(0xff6C63FF),
                text: 'Public Speaking',
              ),
              CustomTextButton(
                backgroundColor: Color(0xff6C63FF),
                text: 'Leadership',
              ),
            ],
          ),
          const CustomBookmarkTile(
            tag: "Basic",
            title: "Fundamentals of Personality",
          ),
          const CustomBookmarkTile(tag: "tag", title: "title"),
        ],
      ),
    );
  }
}

class CustomTextButton extends StatefulWidget {
  final String text;
  final Color backgroundColor;

  const CustomTextButton(
      {super.key, required this.text, required this.backgroundColor});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextButtonState createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () {
          setState(() {
            _isPressed = !_isPressed;
          });
        },
        style: ButtonStyle(
          backgroundColor: _isPressed
              ? MaterialStateProperty.all<Color>(widget.backgroundColor)
              : MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(
                color: widget.backgroundColor,
                width: 2,
              ),
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: _isPressed ? Colors.white : widget.backgroundColor,
          ),
        ),
      ),
    );
  }
}

class CustomBookmarkTile extends StatelessWidget {
  final String tag;
  final String title;
  const CustomBookmarkTile({super.key, required this.tag, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      elevation: 4.0,
      child: ListTile(
        leading: Image.network(
          "https://i.ytimg.com/vi/jta49pz_klc/maxresdefault.jpg",
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.2,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  child: Text(
                    tag,
                    style: const TextStyle(
                      color: Color(0xff6C63FF),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark),
                )
              ],
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Rs. 1500",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff6C63FF),
                  ),
                ),
                Text(
                  "Rs. 2500",
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                )
              ],
            ),
          ],
        ),
        subtitle: Row(
          children: const [
            Icon(
              Icons.star_half,
              color: Colors.amber,
              size: 20,
            ),
            Text("4.5  |  22 reviews"),
          ],
        ),
        tileColor: Colors.white,
      ),
    );
  }
}
