// Contém as regras de negócio corporativas
// é uma entidade
class ProductEntity {
  String name;
  double price;
  String brand;
  String category;
  int qtd;
  int id;

  ProductEntity({
    required this.name,
    required this.price,
    required this.brand,
    required this.category,
    required this.qtd,
    required this.id,
  });

  bool verifyAvailability() {
    if (qtd > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyPriceValid() {
    if (price > 0) {
      return true;
    } else {
      return false;
    }
  }
}
