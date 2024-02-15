import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Category Detail'),
      ),
      body: Column(
        children: [
          // Your other widgets...
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Your content here...
                  Row(
                    children: [
                      Expanded(
                        child: CachedNetworkImage(
                          imageUrl: 'https://urdu.arynews.tv/wp-content/uploads/2018/03/funeral.jpg',
                          placeholder: (context, url) => CircularProgressIndicator(),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      ),
                      // Other widgets in the row...
                    ],
                  ),
                  // More content...
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
