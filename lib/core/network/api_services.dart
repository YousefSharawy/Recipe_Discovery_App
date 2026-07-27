import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:task3/core/constants/api_constants.dart';
import 'package:task3/core/network/dio_service.dart';
import 'package:task3/features/auth/data/models/user_model.dart';
import 'package:task3/features/cart/data/models/cart_response_model.dart';
import 'package:task3/features/home/data/models/recipes_response_model.dart';

part 'api_services.g.dart';

@RestApi()
@injectable
abstract class ApiServices {
  @factoryMethod
  factory ApiServices(DioService client) => _ApiServices(client.dio);

  @POST(ApiConstants.loginEndpoint)
  Future<UserModel> login({
    @Field() required String username,
    @Field() required String password,
  });

  @GET(ApiConstants.recipesEndpoint)
  Future<RecipesResponseModel> getRecipes();

  @GET('${ApiConstants.getCartEndpoint}/{userId}')
  Future<CartResponseModel> getUserCartByID(@Path('userId') int userID);

  @GET(ApiConstants.searchOnRecipeEndpoint)
  Future<RecipesResponseModel> searchOnRecipe(@Query('q') String query);
}
