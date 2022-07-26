import '../repositories/get_cellphones_by_brand_repository.dart';

import '../entities/cellphone_entities.dart';
import 'get_cellphones_by_brand_usecase.dart';

class GetCellphonesByBrandUsecaseImp implements GetCellphonesByBrandUsecase {
  final GetCellphonesByBrandRepository _repository;
  GetCellphonesByBrandUsecaseImp(this._repository);

  @override
  List<CellphoneEntity> call() {
    List<CellphoneEntity> listCorrect = [];
    List<CellphoneEntity> listProducts = _repository.call();

    for (CellphoneEntity product in listProducts) {
        listCorrect.add(product);
    }

    return listCorrect;
  }
}