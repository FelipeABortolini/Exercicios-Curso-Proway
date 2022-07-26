import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase/get_all_products_usecase.dart';
import '../../domain/usecases/get_products_by_id_usecase/get_products_by_id_usecase.dart';

class ProductController {
  // No nosso controller nós usamos os UseCase
  // Por isso nós pedimos uma isntânciado CONTRATO
  // no construtor, fazendo o DIP.
  final GetAllProductsUsecase _getAllProductsUsecase;
  final GetProductsByIdUsecase _getProductByIdUsecase;
  int id;

  ProductController(this._getProductByIdUsecase, this._getAllProductsUsecase) {
    // Aqui no construtor fazemos a chamada do método getAllProducts
    // para trazer os produtos.
    getAllProducts();
    //getProductById();
  }

  // Criamos um objeto aqui para usar ele nas pages.
  List<ProductEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }

  late ProductEntity? productById;
  void getProductById(int id) {
    productById = _getProductByIdUsecase.call(id)!;
  }
}
