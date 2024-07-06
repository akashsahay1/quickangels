import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});
  @override
  State<Explore> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Explore> {
  final List<Map<String, String>> startupData = [
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "IT Startups",
      "description":
          "Metronix Abs is a startup based in Ranchi, working in the IT sector"
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Fintech Startups",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Crypto Startups",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Social Startups",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Gaming Startups",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Agro Startups",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Real Estate Startups",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Another Startup",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Another Startup",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Another Startup",
      "description": "This is another startup description."
    },
    {
      "image": "assets/images/pitches/pitch.jpg",
      "name": "Another Startup",
      "description": "This is another startup description."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 22.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                startupData.length,
                (index) {
                  final data = startupData[index];
                  return SizedBox(
                    height: 290.0,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: 160.0,
                          height: 290.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 7.5,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  data["image"]!,
                                  width: double.infinity,
                                  height: 160.0,
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  data["name"]!,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  data["description"]!,
                                  style: const TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
