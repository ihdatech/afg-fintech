import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fintech/data/remote/data_sources/remote_data_source.dart';
import 'package:fintech/data/remote/models/product_model.dart';
import 'package:fintech/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductRepositoryImpl implements ProductRepository {
  final RemoteDataSource _remoteDataSource;

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
