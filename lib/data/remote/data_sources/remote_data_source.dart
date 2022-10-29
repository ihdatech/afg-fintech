import 'package:dio/dio.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/data/remote/models/product_model.dart';
import 'package:fintech/data/remote/models/register_body.dart';
import 'package:fintech/data/remote/models/register_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_data_source.g.dart';

@injectable
@RestApi()
abstract class RemoteDataSource {
  factory RemoteDataSource(Dio dio) => _RemoteDataSource(dio);

  @GET('/api/login')
  Future<LoginModel> getLogin(@Queries() LoginQueries queries);

  @GET('/api/products')
  Future<List<ProductModel>> getProducts();

  @POST('/api/register')
  Future<RegisterModel> postRegister(@Body() RegisterBody body);
}
