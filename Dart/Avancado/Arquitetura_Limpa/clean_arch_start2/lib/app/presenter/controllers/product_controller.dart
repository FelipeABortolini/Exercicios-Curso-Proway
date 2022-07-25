import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase.dart';

class ProductController {
  // No nosso controller nós usamos os UseCase
  // Por isso nós pedimos uma isntânciado CONTRATO
  // no construtor, fazendo o DIP.
  final GetAllProductsUsecase _getAllProductsUsecase;
  ProductController(this._getAllProductsUsecase) {
    // Aqui no construtor fazemos a chamada do método getAllProducts
    // para trazer os produtos.
    getAllProducts();
  }

  // Criamos um objeto aqui para usar ele nas pages.
  List<ProductEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }
}
