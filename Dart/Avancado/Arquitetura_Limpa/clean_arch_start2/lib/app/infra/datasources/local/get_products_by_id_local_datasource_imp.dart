import '../../../domain/entities/product_entity.dart';
import '../remote/get_products_by_id_datasource.dart';

class GetProductsByIdLocalDatasourceImp implements GetProductsByIdDatasource {
  @override
  ProductEntity? call(int id) {
    List<ProductEntity> list = [
      ProductEntity(
        name: 'Computador',
        price: 5000,
        brand: 'Hp',
        category: 'eletrônicos',
        qtd: 3,
        id: 1,
      ),
      ProductEntity(
        name: 'Bicicleta',
        price: 300,
        brand: 'monark',
        category: 'automóveis',
        qtd: 2,
        id: 2,
      ),
      ProductEntity(
        name: 'Fone de ouvido gamer',
        price: 162,
        brand: 'HyperX',
        category: 'eletrônicos',
        qtd: 0,
        id: 3,
      ),
    ];

    for (var product in list) {
      if (product.id == id) {
        return product;
      }
    }
    return null;
  }
}
