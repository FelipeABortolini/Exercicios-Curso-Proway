// import 'package:clean_arch_start2/app/domain/usecases/get_all_products_usecase_imp.dart';
// import 'package:clean_arch_start2/app/infra/datasources/local/get_all_produsts_local_datasource_imp.dart';
// import 'package:clean_arch_start2/app/infra/repositories/get_all_products_repository_imp.dart';
import 'package:clean_arch_start2/app/presenter/ui/products_by_id_page.dart';
import 'package:clean_arch_start2/core/get_it.dart';
import 'package:flutter/material.dart';

import '../../domain/usecases/get_all_products_usecase/get_all_products_usecase_imp.dart';
import '../../domain/usecases/get_products_by_id_usecase/get_products_by_id_usecase_imp.dart';
import '../../infra/datasources/local/get_all_produsts_local_datasource_imp.dart';
import '../../infra/datasources/local/get_products_by_id_local_datasource_imp.dart';
import '../../infra/repositories/get_all_products_repository_imp.dart';
import '../../infra/repositories/get_products_by_id_repository_imp.dart';
import '../controllers/product_controller.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);

  // ProductController controller = ProductController(
  //   GetAllProductsUsecaseImp(
  //     GetAllProductsRepositoryImp(
  //       GetAllProductsLocalDatasourceImp(),
  //     ),
  //   ),
  // );
  ProductController controller = ProductController(
    GetProductsByIdUsecaseImp(
      GetProductsByIdRepositoryImp(
        GetProductsByIdLocalDatasourceImp(),
      ),
    ),
    0,
    GetAllProductsUsecaseImp(
      GetAllProductsRepositoryImp(
        GetAllProductsLocalDatasourceImp(),
      ),
    ),
  );

  // ProductController controller = getIt.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ProductsByIdPage(id: controller.products[index].id);
                }),
              );
            },
            child: Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.products[index].name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(controller.products[index].category),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
