import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/get_all_products_repository.dart';
import '../datasources/remote/get_all_products_datasource.dart';

// Aqui será a implementação do repositório, porém não é ele que fará as requisições na API, Firebase, local,
// essa responsabilidade é dos datasources.
// A implementação do repositório servirá como uma ponte de certa forma.
class GetAllProductsRepositoryImp implements GetAllProductsRepository {
  // Pecisará de um contrato do datasource de trazer todos os produtos, e ese contrato nós pediremos no contrutor.
  // Para lá no controller, a gente passar a implementação.
  // Seguindo o princípio de DIP (Dependency Inversion Principle) do SOLID.
  final GetAllProductsDatasource _datasource;
  GetAllProductsRepositoryImp(this._datasource);

  @override
  List<ProductEntity> call() {
    return _datasource.call();
  }
}
