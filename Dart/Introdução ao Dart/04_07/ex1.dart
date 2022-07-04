
import 'dart:io';

void addItem(List list, String element){
  list.add(element);
}

void showList(bool end, List<String> l){
  if(!end){
    print("\n------------- IMPRESSÃO DA LISTA --------------\n");
  } else {
    print("\n------------- IMPRESSÃO DA LISTA FINAL --------------\n");
  }

  l.forEach((element) {print('- ${element}');});
}

void removeElem(List l, String elem){
  if(l.contains(elem)) l.remove(elem);
  else print('Elemento não encontrado!\n');
}

void main(){

  int option = 0;
  List<String> lista = [];
  String elem = '';
  bool continuee = true;

  do{
    print('\n1 - Adiconar item na lista\n2 - Mostrar lista\n3 - Remover elemento\n4 - Finaizar\nEscolha uma opção: ');
    option = int.parse(stdin.readLineSync()!);

    switch(option){
      case 1:
        print('Insira um elemento na lista: ');
        elem = stdin.readLineSync()!;
        addItem(lista, elem);
        break;

      case 2:
        showList(false, lista);
        break;

      case 3:
        print('Elemento para remover: ');
        elem = stdin.readLineSync()!;
        removeElem(lista, elem);
        break;

      case 4:
        showList(true, lista);
        continuee = false;
        break;

      default:
        print("Opção inválida, tente novamente!\n");
        break;
    }
  }while(continuee);

}