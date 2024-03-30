import 'package:flutter/material.dart';
import 'package:uber_clone/Data_list.dart';
import 'package:uber_clone/place_search_scrren.dart';
import 'package:uber_clone/widget/MainCardWidget.dart';
import 'package:uber_clone/widget/SuggestionWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Uber',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Enter pickup point',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlaceSearchScreen(),
                  ));
            },
            child: MainCardWidget(
              title: 'Want better pick-up?',
              titleimage:
                  'https://th.bing.com/th/id/OIP.y-_NA92dcqnhEBf4Dr1fDgAAAA?rs=1&pid=ImgDetMain',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  3,
                  (index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PlaceSearchScreen(),
                              ));
                        },
                        child: SuggestionWidget(
                          image: mages[index],
                          Name: SuggestionNames[index],
                        ),
                      )),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PlaceSearchScreen(),
                  ));
            },
            child: MainCardWidget(
              title: 'You have multiple pr',
              titleimage:
                  'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/566f98105463221.607bdea0aaa94.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
