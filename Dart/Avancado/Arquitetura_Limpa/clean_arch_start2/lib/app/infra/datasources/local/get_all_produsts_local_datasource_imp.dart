import '../../../domain/entities/product_entity.dart';
import '../remote/get_all_products_datasource.dart';

class GetAllProductsLocalDatasourceImp implements GetAllProductsDatasource {
  @override
  List<ProductEntity> call() {
    return [
      ProductEntity(
        name: 'Computador',
        price: 5000,
        brand: 'Hp',
        category: 'eletrônicos',
        qtd: 3,
      ),
      ProductEntity(
        name: 'Bicicleta',
        price: 300,
        brand: 'monark',
        category: 'automóveis',
        qtd: 2,
      ),
      ProductEntity(
        name: 'Fone de ouvido gamer',
        price: 162,
        brand: 'HyperX',
        category: 'eletrônicos',
        qtd: 0,
      ),
    ];
  }
}
