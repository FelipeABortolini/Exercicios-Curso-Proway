import '../../../domain/entities/cellphone_entities.dart';
import '../remote/get_cellphones_by_brand_datasource.dart';

class GetCellphonesByBrandLocalDatasourceImp
    implements GetCellphonesByBrandDatasource {
  @override
  List<CellphoneEntity> call() {
    return [
      CellphoneEntity(
        brand: 'Apple',
        description: 'New',
        price: 5000,
        available: true,
      ),
      CellphoneEntity(
        brand: 'Xiaomi',
        description: 'Old',
        price: 3000,
        available: true,
      ),
      CellphoneEntity(
        brand: 'Samsung',
        description: 'New',
        price: 4000,
        available: true,
      ),
    ];
  }
}
