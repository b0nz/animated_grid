import 'package:animated_grid/animated_scroll_view_item.dart';
import 'package:animated_grid/list_item.dart';
import 'package:flutter/material.dart';

class AnimatedGridView extends StatelessWidget {
  const AnimatedGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
        ),
        cacheExtent: 0,
        padding: const EdgeInsets.all(8),
        itemCount: 200,
        itemBuilder: (context, index) {
          return const AnimatedScrollViewItem(child: ListItem());
        },
      ),
    );
  }
}
