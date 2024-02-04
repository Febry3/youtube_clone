import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final categories = [
    'All videos',
    'Today',
    'Live',
    'Shorts',
    'Continue watching',
    'Unwatched',
    'Posts'
  ];

  CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        child: Container(
          height: 35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 42, 42, 42),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Text(category),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
