// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:task3/core/network/api_services.dart' as _i208;
import 'package:task3/core/network/dio_service.dart' as _i164;
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
import 'package:task3/features/home/data/repository/home_repository_impl.dart'
    as _i171;
import 'package:task3/features/home/data/source/home_data_source.dart' as _i300;
import 'package:task3/features/home/data/source/home_data_source_impl.dart'
    as _i482;
import 'package:task3/features/home/domain/repository/home_repository.dart'
    as _i563;
import 'package:task3/features/home/domain/usecases/get_all_recipes_use_case.dart'
    as _i70;
import 'package:task3/features/home/presentation/controller/home_controller.dart'
    as _i5;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.singleton<_i164.DioService>(() => _i164.DioService());
    gh.factory<_i208.ApiServices>(
      () => _i208.ApiServices(gh<_i164.DioService>()),
    );
    gh.lazySingleton<_i976.AuthDataSource>(
      () => _i670.AuthDataSourceImpl(gh<_i208.ApiServices>()),
    );
    gh.lazySingleton<_i300.HomeDataSource>(
      () => _i482.HomeDataSourceImpl(gh<_i208.ApiServices>()),
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
    gh.lazySingleton<_i70.GetAllRecipesUseCase>(
      () => _i70.GetAllRecipesUseCase(gh<_i563.HomeRepository>()),
    );
    gh.lazySingleton<_i239.AuthController>(
      () => _i239.AuthController(gh<_i945.LoginUsecase>()),
    );
    gh.lazySingleton<_i5.HomeController>(
      () => _i5.HomeController(gh<_i70.GetAllRecipesUseCase>()),
    );
    return this;
  }
}
