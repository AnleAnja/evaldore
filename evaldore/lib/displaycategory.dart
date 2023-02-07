import 'package:evaldore/weightcriteria.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class DisplayCategory extends StatefulWidget {
  const DisplayCategory({Key? key, required this.category}) : super(key: key);

  final Category category;

  @override
  State<DisplayCategory> createState() => _DisplayCategoryState();
}

class _DisplayCategoryState extends State<DisplayCategory> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          Navigator.pop(context, widget.category);
          return Future(() => false);
        },
        child: Scaffold(
          appBar: AppBar(title: Text(widget.category.name)),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(widget.category.criteria.length, (index) {
                return WeightCriteria(category: widget.category, index: index);
              }),
            ),
          ),
        ));
  }
}
