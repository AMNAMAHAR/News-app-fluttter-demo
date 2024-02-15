import 'package:flettt/newscannelheadlinemodel.dart';
import 'package:flettt/newsrepository.dart';


import 'Categoriesnewsmodel..dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(String newsSource) async {
    final response = await _rep.fetchNewChannelHeadlinesApi(newsSource);
    return response;
  }

  Future<CategoryNewsModel> fetchCategoriesNewsApi(String categoryName) async {
    final response = await _rep.fetchCategoriesNewsApi(categoryName);
    return response;
  }
}
