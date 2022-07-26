import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/get_products_by_id_repository.dart';
import '../datasources/remote/get_products_by_id_datasource.dart';

class GetProductsByIdRepositoryImp implements GetProductsByIdRepository {
  final GetProductsByIdDatasource _datasource;
  GetProductsByIdRepositoryImp(this._datasource);

  @override
  ProductEntity? call(int id) {
    return _datasource.call(id);
  }
}