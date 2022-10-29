import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/product_model.dart';
import 'package:injectable/injectable.dart';

@singleton
abstract class ProductRepository {
  Future<Either<String, List<ProductModel>>> getProducts();
}
