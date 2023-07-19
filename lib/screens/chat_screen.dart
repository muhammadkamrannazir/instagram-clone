import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone_outlined)),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.emergency_recording_rounded),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        leading: const BackButton(),
        backgroundColor: Colors.black,
        title: const ListTile(
          leading: CircleAvatar(
            radius: 17,
            backgroundImage: AssetImage("assets/b.png"),
          ),
          title: Text(
            "Coleridge",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          subtitle: Text(
            "Active now ",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage("assets/2.png"),
          ),
          const Text(
            "Coleridge",
          ),
          const Text(
            "jAsWal_001.Instagram",
            style: TextStyle(fontSize: 15),
          ),
          const Text(
            "10k followers.1K posts",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const Text(
            "You don't follow each other on instagram",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              width: 100,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(137, 44, 42, 42),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "View Profile",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "25 May,11:08 am",
            style: TextStyle(fontSize: 11, color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          ChatBubble(
            text: "Salam",
            isSenderMe: true,
          ),
          ChatBubble(
            text: "Wasalam",
            isSenderMe: false,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
            child: TextField(
              cursorColor: Colors.grey,
              cursorWidth: 1.5,
              cursorHeight: 15,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                filled: true,
                fillColor: Colors.grey[900],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: TextButton(
                    onPressed: () {},
                    child: const CircleAvatar(
                      radius: 17,
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    )),
                hintText: 'Message',
                hintStyle:
                    const TextStyle(color: Color.fromARGB(255, 188, 178, 178)),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.mic_none_outlined,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.photo_outlined,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.emoji_emotions,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
