import '../entities/cellphone_entities.dart';

abstract class GetCellphonesByBrandUsecase {
  List<CellphoneEntity> call();
}