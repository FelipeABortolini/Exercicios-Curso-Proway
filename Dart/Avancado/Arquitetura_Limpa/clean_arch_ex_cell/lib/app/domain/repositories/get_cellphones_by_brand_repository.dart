import '../entities/cellphone_entities.dart';

abstract class GetCellphonesByBrandRepository {
  List<CellphoneEntity> call();
}