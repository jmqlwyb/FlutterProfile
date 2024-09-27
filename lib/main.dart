import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RMAGALLANEZ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3A6D8C)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  final String predefinedText =
      """Hi, it’s me. I just wanted to call you and say that I’m sorry. 
      I’m sorry for how things ended. I know it was hard for both of us, and I know that we didn’t 
      understand each other very well. I just want you to know that I care about you, and I miss you.
      I’ve been thinking about you a lot, and I just want you to be happy. I hope you’re doing well and that you’re 
      finding joy in your life. I love you, and I really hope that you can forgive me for everything. I really want you to be happy."""; // Your predefined text

  void _followUser() {
    print(
        'Someone followed you RMAGALLANEZ!'); // Print message when user is followed
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(181, 249, 218, 186), // Background color
      appBar: AppBar(
        backgroundColor:
            Theme.of(context).colorScheme.inversePrimary, // App bar color
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Profile Picture added here
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'assets/images/LRM_20240517_192913-01.jpeg'), // Replace with your image URL
            ),
            const SizedBox(height: 20), // Space between the image and text
            const Text(
              'Raymart Magallanes',
              style: TextStyle(
                fontSize: 24, // Font size for the name
                fontWeight: FontWeight.bold, // Bold font weight
              ),
            ),
            const SizedBox(
                height: 20), // Space between name and predefined text
            Text(
              predefinedText, // Display the predefined text
              style: const TextStyle(
                fontSize: 16, // Set font size for the text
                color: Colors.black, // Text color
              ),
              textAlign: TextAlign.center, // Center the text
            ),
            const SizedBox(
                height: 20), // Space between predefined text and button
            ElevatedButton(
              onPressed: _followUser, // Call follow user function
              child: const Text('Follow'), // Button text
            ),
          ],
        ),
      ),
    );
  }
}
