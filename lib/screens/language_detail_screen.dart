import 'package:flutter/material.dart';

class LanguageDetailScreen extends StatelessWidget {
  final String language;
  final List<String> features;

  const LanguageDetailScreen({
    required this.language,
    required this.features,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$language Features')),
      body: ListView.builder(
        itemCount: features.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.check_circle_outline, color: Colors.teal),
            title: Text(features[index]),
          );
        },
      ),
    );
  }
}
