import 'package:clean_arch_start2/app/domain/usecases/get_products_by_id_usecase/get_products_by_id_usecase_imp.dart';
import 'package:clean_arch_start2/app/infra/datasources/local/get_products_by_id_local_datasource_imp.dart';
import 'package:clean_arch_start2/app/infra/repositories/get_products_by_id_repository_imp.dart';
import 'package:get_it/get_it.dart';

import '../app/domain/usecases/get_all_products_usecase/get_all_products_usecase_imp.dart';
import '../app/infra/datasources/local/get_all_produsts_local_datasource_imp.dart';
import '../app/infra/repositories/get_all_products_repository_imp.dart';
import '../app/presenter/controllers/product_controller.dart';

final getIt = GetIt.instance;

void setupDependecies() {
  // datasources
  getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
    GetAllProductsLocalDatasourceImp(),
  );
  getIt.registerSingleton<GetProductsByIdLocalDatasourceImp>(
    GetProductsByIdLocalDatasourceImp(),
  );

  // repositories
  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(
      getIt.get<GetAllProductsLocalDatasourceImp>(),
    ),
  );

  // usecases
  getIt.registerSingleton<GetProductsByIdUsecaseImp>(
    GetProductsByIdUsecaseImp(
      getIt.get<GetProductsByIdRepositoryImp>(),
    ),
  );
  
  // controllers
  getIt.registerSingleton<ProductController>(
    ProductController(
      getIt.get<GetProductsByIdUsecaseImp>(),
      getIt.get<GetAllProductsUsecaseImp>(),
    ),
  );
}
