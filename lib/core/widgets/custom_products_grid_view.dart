import 'package:flutter/material.dart';

import '../../features/home/data/models/product_model.dart';
import '../models/custom_product_model.dart';
import 'product_item_widget.dart';

class CustomProductsGridView extends StatelessWidget {
  const CustomProductsGridView({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: products.length,
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 0.0,
              childAspectRatio: MediaQuery.sizeOf(context).width == 390
                  ? 150 / 281
                  : MediaQuery.sizeOf(context).width == 375
                      ? 145 / 281
                      : MediaQuery.sizeOf(context).width <= 360
                          ? 140 / 281
                          : 165 / 281),
          itemBuilder: (context, index) {
            return ProductItemWidget(
              customProductModel:
                  CustomProductModel(width: 180, productModel: products[index]),
            );
          }),
    );
  }
}
