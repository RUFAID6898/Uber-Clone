import 'package:flutter/material.dart';
import 'package:uber_clone/Data_list.dart';
import 'package:uber_clone/home_screen.dart';
import 'package:uber_clone/widget/SuggestionWidget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Services',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Go anywhere, get anyrhing',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(219, 242, 241, 241),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(SuggestionNames.last),
                      ),
                      Image.network(mages[0])
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(219, 242, 241, 241),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(SuggestionNames.first),
                      ),
                      Image.network(mages.first)
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: List.generate(
                3,
                (index) => SuggestionWidget(
                      image: mages[index],
                      Name: SuggestionNames[index],
                    )),
          ),
        ],
      ),
    );
  }
}
