import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';

part 'product_page.freezed.dart';
part 'product_page.g.dart';

@freezed
abstract class ProductPage with _$ProductPage {
  const factory ProductPage({
    required List<Product> items,
    required int total,
    required int page,
    required int limit,
  }) = _ProductPage;

  factory ProductPage.fromJson(Map<String, dynamic> json) => _$ProductPageFromJson(json);
}
