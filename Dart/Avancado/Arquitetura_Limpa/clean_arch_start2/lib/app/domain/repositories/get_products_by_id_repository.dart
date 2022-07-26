import '../entities/product_entity.dart';

abstract class GetProductsByIdRepository {
  ProductEntity? call(int id);
}