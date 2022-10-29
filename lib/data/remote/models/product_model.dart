import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  factory ProductModel({
    @JsonKey(name: 'id', defaultValue: 0) required int id,
    @JsonKey(name: 'name', defaultValue: '') required String name,
    @JsonKey(name: 'description', defaultValue: '') required String description,
    @JsonKey(name: 'price', defaultValue: 0) required int price,
    @JsonKey(name: 'date', defaultValue: '') required String date,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'created_at', defaultValue: '') required String createdAt,
    @JsonKey(name: 'updated_at', defaultValue: '') required String updatedAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}
