// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> numb = [0, 1];
  List<int> img = [0, 1];

  void _incrementNumb() {
    setState(() {
      numb.add(numb.last + 1);
    });
  }

  void _incrementImg() {
    setState(() {
      img.add(img.last + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[100],
        elevation: 4,
        shadowColor: Colors.black54,
        title: const Text('SetStste'),
        centerTitle: true,
      ),
      //
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          children: [
            //
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.13,
              height: double.maxFinite,
              child: ListView.builder(
                itemCount: numb.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 60,
                    child: Center(
                      child: Text(
                        numb[index].toString(),
                        style: GoogleFonts.montserrat(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            //
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.792,
              height: double.maxFinite,
              child: ListView.builder(
                itemCount: img.length, // Display only one image
                itemBuilder: (context, index) {
                  return Image.network(
                    'https://source.unsplash.com/random/1080x720', // Adjust size as needed
                    fit: BoxFit.cover,
                    height: 60,
                  );
                },
              ),
            ),
            //
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: _incrementNumb,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrange[100],
              ),
              child: const Icon(
                Icons.post_add_rounded,
                size: 30,
              ),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: _incrementImg,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepOrange[100],
              ),
              child: const Icon(
                Icons.add_a_photo_rounded,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
