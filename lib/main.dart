import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'j.mqlwyb',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 203, 208, 211)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  final String predefinedText =
      """Lorem Ipsum is simply dummy text of the printing and 
      typesetting industry. Lorem Ipsum has been the industry's standard dummy 
      text ever since the 1500s, when an unknown printer took a galley of type and 
      scrambled it to make a type specimen book. It has survived not only five centuries, 
      but also the leap into electronic typesetting, remaining essentially unchanged.
       It was popularised in the 1960s with the release of
        Letraset sheets containing Lorem Ipsum passages,
         and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.."""; 

  void _followUser() {
    print('ig: @j.mqlwyb!'); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFfd1d1d),
              Color(0xFF833ab4),
              Color(0xFFfd1d1d),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                    'assets/images/1.jpeg'), 
              ),
              const SizedBox(height: 20), 
              const Text(
                'Mary Loi Yves Kipte Ricalde ',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 9, 9, 9), 
                ),
              ),
              const SizedBox(height: 20), 
              Text(
                predefinedText, 
                style: const TextStyle(
                  fontSize: 16, 
                  color: Color.fromARGB(255, 189, 182, 182),
                ),
                textAlign: TextAlign.center, 
              ),
              const SizedBox(height: 20), 
              // Wrap the button in a Container with width
              Container(
                width: double.infinity, // Make the button expand to full width
                padding: const EdgeInsets.symmetric(horizontal: 20), // Add padding
                child: ElevatedButton(
                  onPressed: _followUser, 
                  child: const Text('I message rako diri sa akong IG'), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
