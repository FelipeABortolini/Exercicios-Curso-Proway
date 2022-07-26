import 'package:clean_arch_ex_cell/app/domain/usecases/get_cellphones_by_brand_usecase_imp.dart';
import 'package:clean_arch_ex_cell/app/infra/datasources/local/get_cellphones_by_brand_local_datasource_imp.dart';
import 'package:clean_arch_ex_cell/app/infra/repositories/get_cellphones_by_brand_repository_imp.dart';
import 'package:clean_arch_ex_cell/app/presenter/controllers/cellphone_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // datasources
  getIt.registerSingleton<GetCellphonesByBrandLocalDatasourceImp>(
    GetCellphonesByBrandLocalDatasourceImp(),
  );

  // repositories
  getIt.registerSingleton<GetCellphonesByBrandRepositoryImp>(
    GetCellphonesByBrandRepositoryImp(
      getIt.get<GetCellphonesByBrandLocalDatasourceImp>(),
    ),
  );

  // // usecases
  getIt.registerSingleton<GetCellphonesByBrandUsecaseImp>(
    GetCellphonesByBrandUsecaseImp(
      getIt.get<GetCellphonesByBrandRepositoryImp>()
    ),
  );

  // // controllers
  getIt.registerSingleton<CellphoneController>(
    CellphoneController(
      getIt.get<GetCellphonesByBrandUsecaseImp>()
    )
  );
}