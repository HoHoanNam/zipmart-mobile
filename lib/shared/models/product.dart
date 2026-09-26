import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

/// `price`/`originalPrice` stay as raw strings — Postgres `numeric` columns
/// serialize as strings over JSON. Never parse-and-reformat by hand; always
/// go through CurrencyFormatter.vnd() (mirrors web's VndCurrencyPipe).
@freezed
abstract class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String categoryId,
    required String brand,
    String? description,
    @Default(<String>[]) List<String> images,
    required String price,
    String? originalPrice,
    required int stock,
    double? averageRating,
    int? reviewCount,
    int? soldCount,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
