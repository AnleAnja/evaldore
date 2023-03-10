import 'package:evaldore/main.dart';
import 'package:flutter/material.dart';

class WeightCriteria extends StatefulWidget {
  const WeightCriteria({Key? key, required this.category, required this.index}) : super(key: key);

  final Category category;
  final int index;

  @override
  State<WeightCriteria> createState() => _WeightCriteriaState();
}

class _WeightCriteriaState extends State<WeightCriteria> {

  @override
  Widget build(BuildContext context) {
    final criteria = widget.category.criteria[widget.index];
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(criteria.name, style: textTheme.headlineSmall),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Text(criteria.description, style: textTheme.labelMedium,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Text("Ignorieren"),
                  Radio(
                      value: 0,
                      groupValue: criteria.value,
                      onChanged: (index) {
                        setState(() {
                          criteria.value = index!;
                          criteria.weighted = true;
                          for (var c in widget.category.criteria) {
                            if (c.weighted == false) {
                              widget.category.progress = false;
                            } else {
                              widget.category.progress = true;
                            }
                          }
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  const Text("1"),
                  Radio(
                      value: 1,
                      groupValue: criteria.value,
                      onChanged: (index) {
                        setState(() {
                          criteria.value = index!;
                          criteria.weighted = true;
                          for (var c in widget.category.criteria) {
                            if (c.weighted == false) {
                              widget.category.progress = false;
                            } else {
                              widget.category.progress = true;
                            }
                          }
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  const Text("2"),
                  Radio(
                      value: 2,
                      groupValue: criteria.value,
                      onChanged: (index) {
                        setState(() {
                          criteria.value = index!;
                          criteria.weighted = true;
                          for (var c in widget.category.criteria) {
                            if (c.weighted == false) {
                              widget.category.progress = false;
                            } else {
                              widget.category.progress = true;
                            }
                          }
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  const Text("3"),
                  Radio(
                      value: 3,
                      groupValue: criteria.value,
                      onChanged: (index) {
                        setState(() {
                          criteria.value = index!;
                          criteria.weighted = true;
                          for (var c in widget.category.criteria) {
                            if (c.weighted == false) {
                              widget.category.progress = false;
                            } else {
                              widget.category.progress = true;
                            }
                          }
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
