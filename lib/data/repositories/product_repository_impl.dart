import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fintech/data/remote/data_sources/product_remote_data_source.dart';
import 'package:fintech/data/remote/models/product_model.dart';
import 'package:fintech/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource _remoteDataSource;

  ProductRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<String, List<ProductModel>>> getProducts() async {
    try {
      List<ProductModel> result = await _remoteDataSource.getProducts();
      return Right(result);
    } on DioError catch (e) {
      return Left(e.toString());
    } catch (e) {
      return Left(e.toString());
    }
  }
}
