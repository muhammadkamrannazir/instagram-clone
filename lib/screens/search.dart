import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/custom_post.dart';

class Searchscreen extends StatelessWidget {
  const Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(
              right: 12,
              // top: MediaQuery.paddingOf(context).top,
            ),
            child: SizedBox(
              height: 35,
              child: TextField(
                cursorColor: Colors.grey,
                cursorWidth: 1.5,
                cursorHeight: 15,
                decoration: InputDecoration(
                  isCollapsed: true,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 7),
                  filled: true,
                  fillColor: Colors.grey[900],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 20,
                    color: Color.fromARGB(255, 73, 67, 67),
                  ),
                  icon: IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 188, 178, 178)),
                ),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
          ),
          itemBuilder: (context, index) => Searchpagepost(
            images[index].toString(),
          ),
        ));
  }
}

List images = <String>[
  'assets/0.png',
  'assets/1.png',
  'assets/3.png',
  'assets/4.png',
  'assets/6.png',
  'assets/c.png',
  'assets/4.png',
  'assets/6.png',
  'assets/c.png',
  'assets/1.png',
  'assets/2.png',
  'assets/3.png',
  'assets/4.png',
  'assets/6.png',
  'assets/c.png',
  'assets/4.png',
  'assets/4.png',
  'assets/6.png',
  'assets/c.png',
];
