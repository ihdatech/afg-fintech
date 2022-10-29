import 'package:dartz/dartz.dart';
import 'package:fintech/data/remote/models/product_model.dart';
import 'package:fintech/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductsUsecases {
  final Future<Either<String, List<ProductModel>>> Function() execute;
  GetProductsUsecases._({required this.execute});
  factory GetProductsUsecases(ProductRepository repository) {
    Future<Either<String, List<ProductModel>>> execute() => repository.getProducts();
    return GetProductsUsecases._(execute: () => execute());
  }
}