import '../../../domain/entities/product_entity.dart';

abstract class GetProductsByIdDatasource {
  ProductEntity? call(int id);
}