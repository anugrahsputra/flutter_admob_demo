import 'package:flutter/material.dart';
import 'package:try_admob/data/news_headline.dart';

class NewsWidget extends StatelessWidget {
  const NewsWidget({Key? key, required this.news}) : super(key: key);
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.indigo[600],
      elevation: 4,
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(news.assets),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10),
            child: Column(
              children: [
                Text(
                  news.headline,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 5),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    color: Colors.indigo[50],
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.yellowAccent[700],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.pink[200],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
