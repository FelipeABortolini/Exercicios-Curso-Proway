import '../entities/product_entity.dart';
import '../repositories/get_all_products_repository.dart';
import 'get_all_products_usecase.dart';

// Contém as regras de negócio da aplicação
// Essa é a implementação do caso de uso do GetAllProducts
class GetAllProductsUsecaseImp implements GetAllProductsUsecase {
  // Aqui precisaremos de um CONTRATO do repositório para fazer a chamada do método.
  // e dependeremos de ABSTRAÇÃO e NÃO DE IMPLEMENTAÇÃO, por isso o CONTRATO.
  final GetAllProductsRepository _repository;
  GetAllProductsUsecaseImp(this._repository);

  @override
  List<ProductEntity> call() {
    return _repository.call();
  }
}
