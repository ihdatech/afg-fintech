import 'package:dio/dio.dart';
import 'package:fintech/data/remote/models/product_model.dart';
import 'package:retrofit/retrofit.dart';

part 'product_remote_data_source.g.dart';

@RestApi()
abstract class ProductRemoteDataSource {
  factory ProductRemoteDataSource(Dio dio) => _ProductRemoteDataSource(dio);

  @GET('/api/products')
  Future<List<ProductModel>> getProducts();
}
