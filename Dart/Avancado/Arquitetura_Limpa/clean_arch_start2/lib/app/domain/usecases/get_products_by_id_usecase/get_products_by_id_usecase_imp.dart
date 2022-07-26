import '../../repositories/get_products_by_id_repository.dart';

import '../../entities/product_entity.dart';
import 'get_products_by_id_usecase.dart';

class GetProductsByIdUsecaseImp implements GetProductsByIdUsecase {
  final GetProductsByIdRepository _repository;
  GetProductsByIdUsecaseImp(this._repository);

  @override
  ProductEntity? call(int id) {
    return _repository.call(id);
  }
}
