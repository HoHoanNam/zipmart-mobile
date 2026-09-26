import 'package:flutter/material.dart';

import '../../shared/widgets/stub_screen.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context) => StubScreen(title: 'Sản phẩm', subtitle: productId);
}
