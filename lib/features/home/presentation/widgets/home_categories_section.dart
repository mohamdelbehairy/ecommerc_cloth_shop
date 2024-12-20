import 'package:flutter/material.dart';

import 'home_categories_header.dart';
import 'home_categories_list_view.dart';

class HomeCategoiresSection extends StatelessWidget {
  const HomeCategoiresSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeCategoriesHeader(),
        SizedBox(height: 16),
        HomeCategoriesListView(),
      ],
    );
  }
}

