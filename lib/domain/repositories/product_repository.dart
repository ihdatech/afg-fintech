import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/product_model.dart';

abstract class ProductRepository {
  Future<Either<String, List<ProductModel>>> getProducts();
}
