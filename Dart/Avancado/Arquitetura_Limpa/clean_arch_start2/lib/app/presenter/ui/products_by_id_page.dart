import '../../domain/usecases/get_all_products_usecase/get_all_products_usecase_imp.dart';
import '../../domain/usecases/get_products_by_id_usecase/get_products_by_id_usecase_imp.dart';
import '../../infra/datasources/local/get_all_produsts_local_datasource_imp.dart';
import '../../infra/datasources/local/get_products_by_id_local_datasource_imp.dart';
import '../../infra/repositories/get_all_products_repository_imp.dart';
import '../../infra/repositories/get_products_by_id_repository_imp.dart';
import '../controllers/product_controller.dart';
import 'package:flutter/material.dart';

class ProductsByIdPage extends StatelessWidget {
  int id;

  ProductsByIdPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  ProductController controller = ProductController(
    GetProductsByIdUsecaseImp(
      GetProductsByIdRepositoryImp(
        GetProductsByIdLocalDatasourceImp(),
      ),
    ),
    id,
    GetAllProductsUsecaseImp(
      GetAllProductsRepositoryImp(
        GetAllProductsLocalDatasourceImp(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos por ID'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Id escolhido: ${controller.productById?.id}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Nome do produto: ${controller.productById?.name}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
