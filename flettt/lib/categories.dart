import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


import 'Categoriesnewsmodel..dart';
import 'newseven.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  NewsViewModel newsViewModel = NewsViewModel();
  final format = DateFormat('MMMM dd.yyyy');
  String categoryName = 'General';
  List<String> categoriesList = ['General', 'Entertainment', 'Health', 'Sports', 'Business', 'Technology'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        categoryName = categoriesList[index];
                      });
                      _fetchCategoryNews(categoryName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          color: categoryName == categoriesList[index] ? Colors.blue : Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Center(
                            child: Text(
                              categoriesList[index],
                              style: GoogleFonts.poppins(fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: FutureBuilder<CategoryNewsModel>(
                future: newsViewModel.fetchCategoriesNewsApi(categoryName),
                builder: (BuildContext context, AsyncSnapshot<CategoryNewsModel> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.data == null || snapshot.data!.articles == null || snapshot.data!.articles!.isEmpty) {
                    return Center(child: Text('No data available'));
                  } else {
                    return ListView.builder(
                      itemCount: snapshot.data!.articles!.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return _buildNewsItem(snapshot.data!.articles![index], width, height);
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsItem(Articles article, double width, double height) {
    DateTime dateTime = DateTime.parse(article.publishedAt ?? '');
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              article.urlToImage ?? '',
              fit: BoxFit.cover,
              height: height * .18,
              width: width * .3,
              errorBuilder: (context, error, stackTrace) {
                return Center(
                  child: Text('Image not available'),
                );
              },
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: height * .14,
                padding: EdgeInsets.only(left: 2),
                child: Column(
                  children: [
                    Text(
                      article.title ?? '',
                      style: GoogleFonts.poppins(
                        fontSize: 8,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          article.source?.name ?? '',
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          format.format(dateTime),
                          style: GoogleFonts.poppins(
                            fontSize: 6,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _fetchCategoryNews(String category) async {
    final response = await newsViewModel.fetchCategoriesNewsApi(category);
    // Handle response as needed
  }
}
