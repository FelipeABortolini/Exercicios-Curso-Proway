import '../datasources/remote/get_cellphones_by_brand_datasource.dart';
import '../../domain/entities/cellphone_entities.dart';
import '../../domain/repositories/get_cellphones_by_brand_repository.dart';

class GetCellphonesByBrandRepositoryImp implements GetCellphonesByBrandRepository {
  
  final GetCellphonesByBrandDatasource _datasource;
  GetCellphonesByBrandRepositoryImp(this._datasource);

  @override
  List<CellphoneEntity> call() {
    return _datasource.call();
  }
}
