import '../../../domain/entities/cellphone_entities.dart';

abstract class GetCellphonesByBrandDatasource {
  List<CellphoneEntity> call();
}