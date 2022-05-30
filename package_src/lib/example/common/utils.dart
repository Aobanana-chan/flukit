import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget buildSliverList([int count = 5]) {
  return SliverFixedExtentList(
    itemExtent: 50,
    delegate: SliverChildBuilderDelegate(
      (context, index) {
        return ListTile(
            title: Text('$index'),
            onTap: () {
              if (kDebugMode) {
                print(index);
              }
            });
      },
      childCount: count,
    ),
  );
}
