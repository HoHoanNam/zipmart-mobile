import 'package:intl/intl.dart';

/// Mirrors web's `VndCurrencyPipe` (`Intl.NumberFormat('vi-VN')`). Backend
/// prices are Postgres `numeric` columns serialized as raw strings
/// (`"199000.00"`) — never interpolate them directly, always through here.
class CurrencyFormatter {
  CurrencyFormatter._();

  static final _formatter = NumberFormat.currency(locale: 'vi_VN', symbol: '₫', decimalDigits: 0);

  static String vnd(String rawValue) {
    final value = double.tryParse(rawValue) ?? 0;
    return _formatter.format(value);
  }
}
