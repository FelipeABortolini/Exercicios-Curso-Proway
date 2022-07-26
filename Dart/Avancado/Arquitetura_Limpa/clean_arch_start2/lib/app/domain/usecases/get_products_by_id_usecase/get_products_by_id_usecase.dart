import '../../entities/product_entity.dart';

abstract class GetProductsByIdUsecase {
  ProductEntity? call(int id);
}