// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'coustom-widgits.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get mediaWidth => MediaQuery.of(context).size.width;
  get mediaHeight => MediaQuery.of(context).size.height;

  List<int> number = [1];

  ///[list to create list for numbers]

  List<int> image = [1];

  ///[list to create list for images]

  void _incrementNumber() {
    ///[logic to increse number by +1]
    setState(() {
      number.add(number.last + 1);
    });
  }

  void _incrementImage() {
    ///[logic to increse images by +1]
    setState(() {
      image.add(image.last + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      //
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            numberList(),
            imageList(),
          ],
        ),
      ),
      floatingActionButton: floatingActionButton(),
    );
  }

  Column floatingActionButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        addNumberButton(),
        //
        const SizedBox(height: 20),
        //
        addImageButton(),
      ],
    );
  }

  Widget addImageButton() {
    return Coustom.curveContainer(
      onTap: _incrementImage,
      height: 50,
      width: 50,
      color: Colors.deepOrange.shade200,
      borderRadius: BorderRadius.circular(50),
      child: const Icon(
        Icons.add_a_photo_rounded,
        size: 24,
      ),
    );
  }

  Widget addNumberButton() {
    return Coustom.curveContainer(
      onTap:
          _incrementNumber, //here is the button for numbers, calls function for increament in number's list
      height: 50,
      width: 50,
      color: Colors.deepOrange.shade200,
      borderRadius: BorderRadius.circular(50),
      child: const Icon(
        Icons.playlist_add_rounded,
        size: 26,
        color: Colors.black87,
      ),
    );
  }

  SizedBox numberList() {
    return SizedBox(
      width: mediaWidth * 0.12,
      height: double.maxFinite,
      child: ListView.builder(
        ///[here is the list builder for numbers]
        itemCount: number.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 60,
            child: Center(
              child: Text(
                number[index].toString(),
                style: Coustom.textStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  SizedBox imageList() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      // width: mediaWidth * 0.792,
      height: double.maxFinite,
      child: ListView.builder(
        ///[here is the list builder for images]

        itemCount: image.length, // Display only one image
        itemBuilder: (context, index) {
          return Image.network(
            'https://source.unsplash.com/random/1080x720',

            ///[here is the link to generete random image from unsplash.com]
            fit: BoxFit.cover,
            height: 60,
          );
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.deepOrange[100],
      elevation: 4,
      shadowColor: Colors.black54,
      title: const Text('SetStste'),
      centerTitle: true,
    );
  }
}
