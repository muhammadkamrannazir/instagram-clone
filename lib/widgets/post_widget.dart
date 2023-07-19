// ignore_for_file: must_be_immutable, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:read_more_text/read_more_text.dart';

class CustomPostWidget extends StatefulWidget {
  String uploaderName;
  String uploadersubtitle;
  String postIcon;
  bool isVerified;
  bool isSponsered;
  bool isFavourite;
  bool savetocollection;

  CustomPostWidget({
    required this.uploaderName,
    required this.postIcon,
    this.isVerified = true,
    this.uploadersubtitle = "sponsored",
    this.isSponsered = false,
    this.isFavourite = false,
    this.savetocollection = false,
    super.key,
  });

  @override
  State<CustomPostWidget> createState() => _CustomPostWidgetState();
}

class _CustomPostWidgetState extends State<CustomPostWidget> {
  @override
  Widget build(BuildContext context) {
    int numberOfLikes = 100;
    int numberOfComments = 3;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 19,
              backgroundColor: const Color.fromARGB(255, 83, 80, 80),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage(widget.postIcon),
              ),
            ),
            title: Row(
              children: [
                Text(
                  widget.uploaderName,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 3,
                ),
                widget.isVerified
                    ? Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 15,
                      )
                    : SizedBox(),
              ],
            ),
            trailing: const Icon(
              Icons.more_vert,
              size: 18,
              color: Colors.white,
            ),
            subtitle: widget.isSponsered
                ? Text(
                    widget.uploadersubtitle,
                    style: TextStyle(
                      color: Color(0xFFC7C7C7),
                      fontSize: 13,
                    ),
                  )
                : SizedBox(),
          ),
          GestureDetector(
            onDoubleTap: () {
              setState(() {
                widget.isFavourite = true;
              });
            },
            child: Image(
              image: AssetImage("assets/3.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.isFavourite = !widget.isFavourite;
                        });
                        // print(isFavourite = !widget.isFavourite);
                      },
                      icon: widget.isFavourite
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                          : const Icon(
                              Icons.favorite_outline,
                              color: Colors.white,
                            ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.insert_comment_sharp,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.telegram_sharp,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.savetocollection = !widget.savetocollection;
                        });
                      },
                      icon: widget.savetocollection == false
                          ? Icon(Icons.bookmark_border_rounded,
                              color: Colors.white)
                          : Icon(Icons.bookmark),
                      color: Colors.white,
                    ),
                  ],
                ),
                Text(
                  "$numberOfLikes likes",
                  style: const TextStyle(fontSize: 14),
                ),
                const ReadMoreText(
                  "i am very glad to know that i got very great achieveemnt in matric class,now i am taking admission to pgc which is known as punjabian",
                  numLines: 2,
                  readMoreText: 'Read more',
                  readLessText: 'read less',
                  style: TextStyle(fontSize: 14),
                ),
                numberOfComments < 1
                    ? const SizedBox()
                    : Text(
                        "View ${numberOfComments < 2 ? '' : 'all '}$numberOfComments comments",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: AssetImage("assets/c.png"),
                    ),
                    SizedBox(width: 12),
                    Text(
                      "Add a comment",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
