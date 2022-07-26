import '../../domain/entities/cellphone_entities.dart';
import '../../domain/usecases/get_cellphones_by_brand_usecase.dart';

class CellphoneController {
  final GetCellphonesByBrandUsecase _getCellphonesByBrandUsecase;
  CellphoneController(this._getCellphonesByBrandUsecase) {
    getCellphones();
  }

  List<CellphoneEntity> cellphones = [];
  void getCellphones() {
    cellphones = _getCellphonesByBrandUsecase.call();
  }
}
