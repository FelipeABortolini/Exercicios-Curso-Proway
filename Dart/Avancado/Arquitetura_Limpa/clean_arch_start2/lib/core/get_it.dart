import 'package:clean_arch_start2/app/domain/usecases/get_all_products_usecase_imp.dart';
import 'package:clean_arch_start2/app/infra/datasources/local/get_all_produsts_local_datasource_imp.dart';
import 'package:clean_arch_start2/app/infra/repositories/get_all_products_repository_imp.dart';
import 'package:clean_arch_start2/app/presenter/controllers/product_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependecies() {
  // datasources
  getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
    GetAllProductsLocalDatasourceImp(),
  );
  // repositories
  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(getIt.get<GetAllProductsLocalDatasourceImp>()),
  );
  // usecases
  getIt.registerSingleton<GetAllProductsUsecaseImp>(
      GetAllProductsUsecaseImp(getIt.get<GetAllProductsRepositoryImp>()));
  // controllers
  getIt.registerSingleton<ProductController>(
    ProductController(getIt.get<GetAllProductsUsecaseImp>()),
  );
}
