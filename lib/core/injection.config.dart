// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:task3/core/network/api_services.dart' as _i208;
import 'package:task3/core/network/auth_interceptor.dart' as _i1039;
import 'package:task3/core/network/dio_service.dart' as _i164;
import 'package:task3/core/secure/storage_module.dart' as _i553;
import 'package:task3/core/secure/token_storage.dart' as _i6;
import 'package:task3/core/secure/token_storage_impl.dart' as _i918;
import 'package:task3/features/auth/data/repository/auth_repository_impl.dart'
    as _i419;
import 'package:task3/features/auth/data/source/auth_data_source.dart' as _i976;
import 'package:task3/features/auth/data/source/auth_data_source_impl.dart'
    as _i670;
import 'package:task3/features/auth/domain/repository/auth_repository.dart'
    as _i600;
import 'package:task3/features/auth/domain/usecases/login_usecase.dart'
    as _i945;
import 'package:task3/features/auth/presentation/controller/auth_controller.dart'
    as _i239;
import 'package:task3/features/cart/data/repository/cart_repository_impl.dart'
    as _i629;
import 'package:task3/features/cart/data/source/cart_data_source.dart' as _i596;
import 'package:task3/features/cart/data/source/cart_data_source_impl.dart'
    as _i364;
import 'package:task3/features/cart/domain/repository/cart_repository.dart'
    as _i792;
import 'package:task3/features/cart/domain/usecases/get_user_cart_use_case.dart'
    as _i288;
import 'package:task3/features/cart/presentation/controller/cart_controller.dart'
    as _i916;
import 'package:task3/features/home/data/repository/home_repository_impl.dart'
    as _i171;
import 'package:task3/features/home/data/source/home_data_source.dart' as _i300;
import 'package:task3/features/home/data/source/home_data_source_impl.dart'
    as _i482;
import 'package:task3/features/home/domain/repository/home_repository.dart'
    as _i563;
import 'package:task3/features/home/domain/usecases/get_all_recipes_use_case.dart'
    as _i70;
import 'package:task3/features/home/domain/usecases/get_recipes_by_meal_type_usecase.dart'
    as _i436;
import 'package:task3/features/home/domain/usecases/search_on_recipe_use_case.dart'
    as _i371;
import 'package:task3/features/home/presentation/controller/home_controller.dart'
    as _i5;
import 'package:task3/features/recipeDetails/presentation/controller/recipe_details_controller.dart'
    as _i214;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final storageModule = _$StorageModule();
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => storageModule.secureStorage,
    );
    gh.lazySingleton<_i6.TokenStorage>(
      () => _i918.TokenStorageImpl(gh<_i558.FlutterSecureStorage>()),
    );
    gh.factory<_i1039.AuthInterceptor>(
      () => _i1039.AuthInterceptor(gh<_i6.TokenStorage>()),
    );
    gh.singleton<_i164.DioService>(
      () => _i164.DioService(gh<_i1039.AuthInterceptor>()),
    );
    gh.factory<_i208.ApiServices>(
      () => _i208.ApiServices(gh<_i164.DioService>()),
    );
    gh.lazySingleton<_i596.CartDataSource>(
      () => _i364.CartDataSourceImpl(gh<_i208.ApiServices>()),
    );
    gh.lazySingleton<_i792.CartRepository>(
      () => _i629.CartRepositoryImpl(gh<_i596.CartDataSource>()),
    );
    gh.lazySingleton<_i300.HomeDataSource>(
      () => _i482.HomeDataSourceImpl(gh<_i208.ApiServices>()),
    );
    gh.lazySingleton<_i976.AuthDataSource>(
      () => _i670.AuthDataSourceImpl(
        gh<_i208.ApiServices>(),
        gh<_i6.TokenStorage>(),
      ),
    );
    gh.lazySingleton<_i563.HomeRepository>(
      () => _i171.HomeRepositoryImpl(gh<_i300.HomeDataSource>()),
    );
    gh.lazySingleton<_i600.AuthRepository>(
      () => _i419.AuthRepositoryImpl(gh<_i976.AuthDataSource>()),
    );
    gh.lazySingleton<_i945.LoginUsecase>(
      () => _i945.LoginUsecase(gh<_i600.AuthRepository>()),
    );
    gh.lazySingleton<_i288.GetUserCartUseCase>(
      () => _i288.GetUserCartUseCase(gh<_i792.CartRepository>()),
    );
    gh.lazySingleton<_i70.GetAllRecipesUseCase>(
      () => _i70.GetAllRecipesUseCase(gh<_i563.HomeRepository>()),
    );
    gh.lazySingleton<_i436.GetRecipesByMealTypeUsecase>(
      () => _i436.GetRecipesByMealTypeUsecase(gh<_i563.HomeRepository>()),
    );
    gh.lazySingleton<_i371.SearchOnRecipeUseCase>(
      () => _i371.SearchOnRecipeUseCase(gh<_i563.HomeRepository>()),
    );
    gh.lazySingleton<_i239.AuthController>(
      () => _i239.AuthController(gh<_i945.LoginUsecase>()),
    );
    gh.lazySingleton<_i916.CartController>(
      () => _i916.CartController(gh<_i288.GetUserCartUseCase>()),
    );
    gh.lazySingleton<_i5.HomeController>(
      () => _i5.HomeController(
        gh<_i436.GetRecipesByMealTypeUsecase>(),
        gh<_i70.GetAllRecipesUseCase>(),
        gh<_i371.SearchOnRecipeUseCase>(),
      ),
    );
    gh.lazySingleton<_i214.RecipeDetailsController>(
      () => _i214.RecipeDetailsController(gh<_i5.HomeController>()),
    );
    return this;
  }
}

class _$StorageModule extends _i553.StorageModule {}
