import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'categories.dart';
import 'newscannelheadlinemodel.dart';
import 'newsdetailscreen.dart';
import 'newseven.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum FilterList { bbcNews, aryNews, aljazeera }

class _HomeScreenState extends State<HomeScreen> {
  NewsViewModel newsViewModel = NewsViewModel();
  FilterList? selectedMenu;
  final format = DateFormat('MMMM dd.yyyy');

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) =>CategoriesScreen() ,));
          },
          child: Text(
            'News',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          PopupMenuButton<FilterList>(
            initialValue: selectedMenu,
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onSelected: (FilterList item) {
              setState(() {
                selectedMenu = item;
              });
              _fetchNews(item);
            },
            itemBuilder: (BuildContext) => <PopupMenuEntry<FilterList>>[
              PopupMenuItem<FilterList>(
                value: FilterList.bbcNews,
                child: Text('BBC News'),
              ),
              PopupMenuItem<FilterList>(
                value: FilterList.aryNews,
                child: Text('Ary News'),
              ),
              PopupMenuItem<FilterList>(
                value: FilterList.aljazeera,
                child: Text('Al Jazeera News'),
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<NewsChannelsHeadlinesModel>(
          future: _fetchNews(selectedMenu),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: spinkit2,
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error fetching data'),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.articles!.length,
                itemBuilder: (context, index) {
                  return _buildNewsCard(snapshot.data!.articles![index]);
                },
              );
            }
          },
        ),
      ),
    );
  }

  Widget _buildNewsCard(Articles article) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailsScreen(
              newsImage: article.urlToImage ?? '',
              newsTitle: article.title ?? '',
              newsDate: article.publishedAt ?? '',
              author: article.author ?? '',
              description: article.description ?? '',
              source: article.source?.name ?? '',
              content: article.content ?? '',
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  article.urlToImage ?? '',
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Text('Image not available'),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Text(
                article.title ?? '',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    article.source?.name ?? '',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    format.format(DateTime.parse(article.publishedAt ?? '')),
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<NewsChannelsHeadlinesModel> _fetchNews(FilterList? selectedMenu) async {
    String source = 'bbc-news'; // Default source
    if (selectedMenu == FilterList.aryNews) {
      source = 'ary-news';
    } else if (selectedMenu == FilterList.aljazeera) {
      source = 'al-jazeera-english';
    }

    return newsViewModel.fetchNewsChannelHeadlinesApi(source);
  }
}

const spinkit2 = SpinKitFadingCircle(
  color: Colors.amber,
  size: 50,
);
