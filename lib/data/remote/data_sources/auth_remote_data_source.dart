import 'package:dio/dio.dart';
import 'package:fintech/data/remote/models/login_model.dart';
import 'package:fintech/data/remote/models/login_queries.dart';
import 'package:fintech/data/remote/models/register_body.dart';
import 'package:fintech/data/remote/models/register_model.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_data_source.g.dart';

@RestApi()
abstract class AuthRemoteDataSource {
  factory AuthRemoteDataSource(Dio dio) => _AuthRemoteDataSource(dio);

  @GET('/api/login')
  Future<LoginModel> getLogin(@Queries() LoginQueries queries);

  @POST('/api/register')
  Future<RegisterModel> postRegister(@Body() RegisterBody body);
}
