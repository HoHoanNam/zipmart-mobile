// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommendation_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecommendationItem {

 String get productId; double get score; String get reason; Product get product;
/// Create a copy of RecommendationItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendationItemCopyWith<RecommendationItem> get copyWith => _$RecommendationItemCopyWithImpl<RecommendationItem>(this as RecommendationItem, _$identity);

  /// Serializes this RecommendationItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RecommendationItem;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendationItem&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.score, _this.score) || other.score == _this.score)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.product, _this.product) || other.product == _this.product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RecommendationItem;
  return Object.hash(runtimeType,_this.productId,_this.score,_this.reason,_this.product);
}

@override
String toString() {
  final _this = this as RecommendationItem;
  return 'RecommendationItem(productId: ${_this.productId}, score: ${_this.score}, reason: ${_this.reason}, product: ${_this.product})';
}


}

/// @nodoc
abstract mixin class $RecommendationItemCopyWith<$Res>  {
  factory $RecommendationItemCopyWith(RecommendationItem value, $Res Function(RecommendationItem) _then) = _$RecommendationItemCopyWithImpl;
@useResult
$Res call({
 String productId, double score, String reason, Product product
});


$ProductCopyWith<$Res> get product;

}
/// @nodoc
class _$RecommendationItemCopyWithImpl<$Res>
    implements $RecommendationItemCopyWith<$Res> {
  _$RecommendationItemCopyWithImpl(this._self, this._then);

  final RecommendationItem _self;
  final $Res Function(RecommendationItem) _then;

/// Create a copy of RecommendationItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? score = null,Object? reason = null,Object? product = null,}) {
  return _then(RecommendationItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}
/// Create a copy of RecommendationItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [RecommendationItem].
extension RecommendationItemPatterns on RecommendationItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecommendationItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecommendationItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecommendationItem value)  $default,){
final _that = this;
switch (_that) {
case _RecommendationItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecommendationItem value)?  $default,){
final _that = this;
switch (_that) {
case _RecommendationItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  double score,  String reason,  Product product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommendationItem() when $default != null:
return $default(_that.productId,_that.score,_that.reason,_that.product);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  double score,  String reason,  Product product)  $default,) {final _that = this;
switch (_that) {
case _RecommendationItem():
return $default(_that.productId,_that.score,_that.reason,_that.product);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  double score,  String reason,  Product product)?  $default,) {final _that = this;
switch (_that) {
case _RecommendationItem() when $default != null:
return $default(_that.productId,_that.score,_that.reason,_that.product);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecommendationItem implements RecommendationItem {
  const _RecommendationItem({required this.productId, required this.score, required this.reason, required this.product});
  factory _RecommendationItem.fromJson(Map<String, dynamic> json) => _$RecommendationItemFromJson(json);

@override final  String productId;
@override final  double score;
@override final  String reason;
@override final  Product product;

/// Create a copy of RecommendationItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendationItemCopyWith<_RecommendationItem> get copyWith => __$RecommendationItemCopyWithImpl<_RecommendationItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendationItemToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendationItem&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.score, score) || other.score == score)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.product, product) || other.product == product));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,score,reason,product);
}

@override
String toString() {
    return 'RecommendationItem(productId: $productId, score: $score, reason: $reason, product: $product)';
}


}

/// @nodoc
abstract mixin class _$RecommendationItemCopyWith<$Res> implements $RecommendationItemCopyWith<$Res> {
  factory _$RecommendationItemCopyWith(_RecommendationItem value, $Res Function(_RecommendationItem) _then) = __$RecommendationItemCopyWithImpl;
@override @useResult
$Res call({
 String productId, double score, String reason, Product product
});


@override $ProductCopyWith<$Res> get product;

}
/// @nodoc
class __$RecommendationItemCopyWithImpl<$Res>
    implements _$RecommendationItemCopyWith<$Res> {
  __$RecommendationItemCopyWithImpl(this._self, this._then);

  final _RecommendationItem _self;
  final $Res Function(_RecommendationItem) _then;

/// Create a copy of RecommendationItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? score = null,Object? reason = null,Object? product = null,}) {
  return _then(_RecommendationItem(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,product: null == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as Product,
  ));
}

/// Create a copy of RecommendationItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductCopyWith<$Res> get product {
  
  return $ProductCopyWith<$Res>(_self.product, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// @nodoc
mixin _$RecommendationsResponse {

 List<RecommendationItem> get items; bool get coldStart;
/// Create a copy of RecommendationsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecommendationsResponseCopyWith<RecommendationsResponse> get copyWith => _$RecommendationsResponseCopyWithImpl<RecommendationsResponse>(this as RecommendationsResponse, _$identity);

  /// Serializes this RecommendationsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RecommendationsResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecommendationsResponse&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.coldStart, _this.coldStart) || other.coldStart == _this.coldStart));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RecommendationsResponse;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.coldStart);
}

@override
String toString() {
  final _this = this as RecommendationsResponse;
  return 'RecommendationsResponse(items: ${_this.items}, coldStart: ${_this.coldStart})';
}


}

/// @nodoc
abstract mixin class $RecommendationsResponseCopyWith<$Res>  {
  factory $RecommendationsResponseCopyWith(RecommendationsResponse value, $Res Function(RecommendationsResponse) _then) = _$RecommendationsResponseCopyWithImpl;
@useResult
$Res call({
 List<RecommendationItem> items, bool coldStart
});




}
/// @nodoc
class _$RecommendationsResponseCopyWithImpl<$Res>
    implements $RecommendationsResponseCopyWith<$Res> {
  _$RecommendationsResponseCopyWithImpl(this._self, this._then);

  final RecommendationsResponse _self;
  final $Res Function(RecommendationsResponse) _then;

/// Create a copy of RecommendationsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? coldStart = null,}) {
  return _then(RecommendationsResponse(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<RecommendationItem>,coldStart: null == coldStart ? _self.coldStart : coldStart // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RecommendationsResponse].
extension RecommendationsResponsePatterns on RecommendationsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecommendationsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecommendationsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecommendationsResponse value)  $default,){
final _that = this;
switch (_that) {
case _RecommendationsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecommendationsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RecommendationsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RecommendationItem> items,  bool coldStart)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecommendationsResponse() when $default != null:
return $default(_that.items,_that.coldStart);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RecommendationItem> items,  bool coldStart)  $default,) {final _that = this;
switch (_that) {
case _RecommendationsResponse():
return $default(_that.items,_that.coldStart);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RecommendationItem> items,  bool coldStart)?  $default,) {final _that = this;
switch (_that) {
case _RecommendationsResponse() when $default != null:
return $default(_that.items,_that.coldStart);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecommendationsResponse implements RecommendationsResponse {
  const _RecommendationsResponse({required  List<RecommendationItem> items, required this.coldStart}): _items = items;
  factory _RecommendationsResponse.fromJson(Map<String, dynamic> json) => _$RecommendationsResponseFromJson(json);

 final  List<RecommendationItem> _items;
@override List<RecommendationItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  bool coldStart;

/// Create a copy of RecommendationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecommendationsResponseCopyWith<_RecommendationsResponse> get copyWith => __$RecommendationsResponseCopyWithImpl<_RecommendationsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecommendationsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecommendationsResponse&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.coldStart, coldStart) || other.coldStart == coldStart));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),coldStart);
}

@override
String toString() {
    return 'RecommendationsResponse(items: $items, coldStart: $coldStart)';
}


}

/// @nodoc
abstract mixin class _$RecommendationsResponseCopyWith<$Res> implements $RecommendationsResponseCopyWith<$Res> {
  factory _$RecommendationsResponseCopyWith(_RecommendationsResponse value, $Res Function(_RecommendationsResponse) _then) = __$RecommendationsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<RecommendationItem> items, bool coldStart
});




}
/// @nodoc
class __$RecommendationsResponseCopyWithImpl<$Res>
    implements _$RecommendationsResponseCopyWith<$Res> {
  __$RecommendationsResponseCopyWithImpl(this._self, this._then);

  final _RecommendationsResponse _self;
  final $Res Function(_RecommendationsResponse) _then;

/// Create a copy of RecommendationsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? coldStart = null,}) {
  return _then(_RecommendationsResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<RecommendationItem>,coldStart: null == coldStart ? _self.coldStart : coldStart // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
