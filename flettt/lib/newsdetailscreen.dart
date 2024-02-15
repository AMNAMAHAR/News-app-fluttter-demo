import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  final String newsImage;
  final String newsTitle;
  final String newsDate;
  final String author;
  final String description;
  final String source;
  final String content;

  const NewsDetailsScreen({
    required this.newsImage,
    required this.newsTitle,
    required this.newsDate,
    required this.author,
    required this.description,
    required this.source,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              newsImage,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              newsTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Date: $newsDate',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Author: $author',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Source: $source',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Description: $description',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Content: $content',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
