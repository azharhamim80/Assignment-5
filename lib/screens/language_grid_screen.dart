import 'package:flutter/material.dart';
import 'language_detail_screen.dart';

final List<Map<String, String>> languages = [
  {'name': 'Python'},
  {'name': 'Java'},
  {'name': 'Dart'},
  {'name': 'C++'},
  {'name': 'JavaScript'},
];

class LanguageGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programming Languages'),
        backgroundColor: Colors.blue,  // Set the AppBar color to blue
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(12),
        itemCount: languages.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final language = languages[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LanguageDetailScreen(
                    language: language['name']!,
                    features: [
                      'Easy Syntax',
                      'Dynamic Typing',
                      'Popular in AI',
                      'Large Community',
                    ],
                  ),
                ),
              );
            },
            child: Card(
              elevation: 8, // Adding shadow here
              shadowColor: Colors.black.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  language['name']!,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 4,
                        color: Colors.black87,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
