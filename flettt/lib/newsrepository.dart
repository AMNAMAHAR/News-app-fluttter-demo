import 'dart:convert';
import 'package:http/http.dart' as http;


import 'Categoriesnewsmodel..dart';
import 'newscannelheadlinemodel.dart';

class NewsRepository {
  Future<NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesApi(String newsSource) async {
    String url = 'https://newsapi.org/v2/top-headlines?sources=$newsSource&apiKey=3bc1c2a0332e47f0baab3ff4151fb4a3';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    }
    throw Exception('Error');
  }

  Future<CategoryNewsModel> fetchCategoriesNewsApi(String categoryName) async {
    String url = 'https://newsapi.org/v2/everything?q=$categoryName&apiKey=3bc1c2a0332e47f0baab3ff4151fb4a3';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return CategoryNewsModel.fromJson(body);
    }
    throw Exception('Error');
  }
}
