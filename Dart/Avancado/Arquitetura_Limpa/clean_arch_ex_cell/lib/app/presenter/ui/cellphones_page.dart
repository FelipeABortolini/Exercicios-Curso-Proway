// import 'package:clean_arch_ex_cell/app/domain/repositories/get_cellphones_by_brand_repository.dart';
// import 'package:clean_arch_ex_cell/app/domain/usecases/get_cellphones_by_brand_usecase.dart';
import 'package:clean_arch_ex_cell/app/domain/usecases/get_cellphones_by_brand_usecase_imp.dart';
import 'package:clean_arch_ex_cell/app/infra/datasources/local/get_cellphones_by_brand_local_datasource_imp.dart';
import 'package:clean_arch_ex_cell/app/infra/repositories/get_cellphones_by_brand_repository_imp.dart';
import 'package:clean_arch_ex_cell/app/presenter/controllers/cellphone_controller.dart';
import 'package:flutter/material.dart';

class CellphonesPage extends StatelessWidget {
  CellphonesPage({Key? key}) : super(key: key);

  CellphoneController controller = CellphoneController(
    GetCellphonesByBrandUsecaseImp(
      GetCellphonesByBrandRepositoryImp(
        GetCellphonesByBrandLocalDatasourceImp(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cellphones'),
      ),
      body: ListView.builder(
        itemCount: controller.cellphones.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Marca: ${controller.cellphones[index].brand}',
                  ),
                  Text(
                    'Preço: ${controller.cellphones[index].price}',
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
